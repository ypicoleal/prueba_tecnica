from django.shortcuts import render
from rest_framework import routers, serializers, viewsets
from tienda import models as tienda
# Create your views here.


class ProductoSerializer(serializers.HyperlinkedModelSerializer):
	class Meta:
		model = tienda.Producto
		fields = ['producto', 'precio', 'descripcion']
	#end class
#end class

class ProductoViewSet(viewsets.ModelViewSet):
	queryset = tienda.Producto.objects
	serializer_class = ProductoSerializer
#end class

class ClienteSerializer(serializers.HyperlinkedModelSerializer):
	class Meta:
		model = tienda.Cliente
		fields = ['documento', 'nombres', 'detalles']
	#end class
#end class

class ClienteViewSet(viewsets.ModelViewSet):
	queryset = tienda.Cliente.objects
	serializer_class = ClienteSerializer
#end class

class SedeSerializer(serializers.HyperlinkedModelSerializer):
	class Meta:
		model = tienda.Sede
		fields = ['sede', 'direccion']
	#end class
#end class

class SedeViewSet(viewsets.ModelViewSet):
	queryset = tienda.Sede.objects
	serializer_class = SedeSerializer
#end class

class CompraSerializer(serializers.HyperlinkedModelSerializer):

	cliente = ClienteSerializer()
	producto = ProductoSerializer()
	sede = SedeSerializer()

	class Meta:
		model = tienda.Compra
		fields = ['cliente', 'producto', 'sede', 'precio', 'descripcion', 'fecha']
	#end class
#end class

class CompraViewSet(viewsets.ModelViewSet):
	queryset = tienda.Compra.objects
	serializer_class = CompraSerializer
#end class
router = routers.DefaultRouter()
router.register(r'producto', ProductoViewSet)
router.register(r'cliente', ClienteViewSet)
router.register(r'sede', SedeViewSet)
router.register(r'compra', CompraViewSet)