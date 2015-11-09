from django import forms
import models

class ProductoForm(forms.ModelForm):
	def __init__(self, *args, **kwargs):
		super(ProductoForm, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'mdl-textfield__input'
		#end for
	#end def

	class Meta:
		model = models.Producto
		exclude = []
	#end class
#end class

class ClienteForm(forms.ModelForm):
	def __init__(self, *args, **kwargs):
		super(ClienteForm, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'mdl-textfield__input'
		#end for
	#end def
	class Meta:
		model = models.Cliente
		exclude = []
	#end class
#end class

class SedeForm(forms.ModelForm):
	def __init__(self, *args, **kwargs):
		super(SedeForm, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'mdl-textfield__input'
		#end for
	#end def
	class Meta:
		model = models.Sede
		exclude = []
	#end class
#end class

class CompraForm(forms.ModelForm):
	def __init__(self, *args, **kwargs):
		super(CompraForm, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'mdl-textfield__input'
		#end for
	#end def
	class Meta:
		model = models.Compra
		exclude = []
	#end class
#end class