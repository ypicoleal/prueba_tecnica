from django.core.urlresolvers import reverse
from django.db import models

# Create your models here.
class Producto(models.Model):
	producto = models.CharField(max_length=40)
	precio = models.IntegerField()
	descripcion = models.TextField()

	def __unicode__(self):
		return unicode(self.producto)
	#end def

	def get_absolute_url(self):
		return reverse('producto_update', kwargs={'pk': self.pk})
	#end def
#end class

class Cliente(models.Model):
	documento = models.IntegerField(unique=True)
	nombres = models.CharField(max_length=80)
	detalles = models.TextField(null=True, blank=True)

	def __unicode__(self):
		return unicode(self.nombres)
	#end def

	def get_absolute_url(self):
		return reverse('cliente_update', kwargs={'pk': self.pk})
	#end def
#end class

class Sede(models.Model):
	sede = models.CharField(max_length=40)
	direccion = models.CharField(max_length=40)

	def __unicode__(self):
		return unicode(self.sede)
	#end def

	def get_absolute_url(self):
		return reverse('sede_update', kwargs={'pk': self.pk})
	#end def
#end class

class Compra(models.Model):
	cliente = models.ForeignKey(Cliente, null=True, blank=True)
	producto = models.ForeignKey(Producto, null=True, blank=True)
	sede = models.ForeignKey(Sede, null=True, blank=True)
	precio = models.IntegerField(null=True, blank=True)
	descripcion = models.TextField(null=True, blank=True)
	fecha = models.DateTimeField(auto_now_add=True)

	def __unicode__(self):
		return unicode(self.producto)
	#end def

	def get_absolute_url(self):
		return reverse('compra_update', kwargs={'pk': self.pk})
	#end def
#end class