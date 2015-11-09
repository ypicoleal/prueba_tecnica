from django.shortcuts import render, get_object_or_404
from django.db.models import Case, Value, When, Sum
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.views.generic.list import ListView
from django.core.urlresolvers import reverse_lazy
from xhtml2pdf import pisa
from django.template.loader import get_template
from django.template import Context
from django.http import HttpResponse
import cStringIO as StringIO
from cgi import escape
import json
import forms
import models

# Create your views here.
def home(request):
	return render(request, 'dashboard/base.html')
#end def

class ProductoListView(ListView):
	model = models.Producto
#end class

class ProductoCreate(CreateView):
	template_name = "tienda/producto_add.html"
	form_class = forms.ProductoForm
	model = models.Producto
	exclude = []
#end class

class ProductoUpdate(UpdateView):
	template_name = "tienda/producto_edit.html"
	form_class = forms.ProductoForm
	model = models.Producto
	exclude = []
#end class

class ProductoDelete(DeleteView):
	model = models.Producto
	success_url = reverse_lazy('producto_list')
#end class


class ClienteListView(ListView):
	model = models.Cliente
#end class

class ClienteCreate(CreateView):
	template_name = "tienda/cliente_add.html"
	form_class = forms.ClienteForm
	model = models.Cliente
	exclude = []
#end class

class ClienteUpdate(UpdateView):
	template_name = "tienda/cliente_edit.html"
	form_class = forms.ClienteForm
	model = models.Cliente
	exclude = []
#end class

class ClienteDelete(DeleteView):
	model = models.Cliente
	success_url = reverse_lazy('cliente_list')
#end class

class SedeListView(ListView):
	model = models.Sede
#end class

class SedeCreate(CreateView):
	template_name = "tienda/sede_add.html"
	form_class = forms.SedeForm
	model = models.Sede
	exclude = []
#end class

class SedeUpdate(UpdateView):
	template_name = "tienda/sede_edit.html"
	form_class = forms.SedeForm
	model = models.Sede
	exclude = []
#end class

class SedeDelete(DeleteView):
	model = models.Sede
	success_url = reverse_lazy('sede_list')
#end class

class CompraListView(ListView):
	model = models.Compra
#end class

class CompraCreate(CreateView):
	template_name = "tienda/compra_add.html"
	form_class = forms.CompraForm
	model = models.Compra
	exclude = []
#end class

class CompraUpdate(UpdateView):
	template_name = "tienda/compra_edit.html"
	form_class = forms.CompraForm
	model = models.Compra
	exclude = []
#end class

class CompraDelete(DeleteView):
	model = models.Compra
	success_url = reverse_lazy('compra_list')
#end class

def consulta(request):
	compras = None
	cliente = None
	documento = None
	total = None
	error = False
	if request.method == 'POST' and request.POST.get('documento', False):
		documento = request.POST.get('documento', False)
		compras = models.Compra.objects.filter(cliente__documento=documento).annotate(subtotal=Case(When(precio=None, then='producto__precio'), default='precio'))
		total = compras.aggregate(total=Sum('subtotal'))
		cliente = models.Cliente.objects.filter(documento=documento).first()
		error = cliente is None
	#end if
	return render(request, 'tienda/consulta.html', {'compras': compras, 'cliente': cliente, 'documento':documento , 'error':error, 'total':total})
#end def

def render_to_pdf(template_src, context_dict):
	template = get_template(template_src)
	context = Context(context_dict)
	html  = template.render(context)
	result = StringIO.StringIO()

	pdf = pisa.pisaDocument(StringIO.StringIO(html.encode("ISO-8859-1")), result)
	if not pdf.err:
		return HttpResponse(result.getvalue(), content_type='application/pdf')
	#end if
	return HttpResponse('We had some errors<pre>%s</pre>' % escape(html))
#end def

def cliente_pdf(request,pk):
	cliente = get_object_or_404(models.Cliente, pk=pk)
	compras = models.Compra.objects.filter(cliente=cliente).annotate(subtotal=Case(When(precio=None, then='producto__precio'), default='precio'))
	total = compras.aggregate(total=Sum('subtotal'))
	return render_to_pdf(
		'tienda/cliente_compras_pdf.html',
		{
			'pagesize':'A4',
			'compras':compras,
			'cliente':cliente,
			'total':total
		}
	)
#end def

def cliente_json(request,pk):
	cliente = get_object_or_404(models.Cliente, pk=pk)
	compras = models.Compra.objects.filter(cliente=cliente).annotate(subtotal=Case(When(precio=None, then='producto__precio'), default='precio'))
	total = compras.aggregate(total=Sum('subtotal'))
	compras = [{
		'id_productos':compra.producto.pk,
		'producto':compra.producto.producto,
		'sede': print_or_none(compra.sede),
		'precio':compra.subtotal
	} for compra in compras]

	data = {
		'documento': cliente.documento,
		'nombres': cliente.nombres,
		'compras': compras,
		'total': total['total']
	}
	return HttpResponse(json.dumps(data), content_type='aplication/json')
#end def

def print_or_none(object):
	if object:
		return str(object)
	else:
		return None
	#end if
#end def