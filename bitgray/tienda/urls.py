from django.conf.urls import include, url
import views

urlpatterns = [
	url(r'^$', views.home, name='home'),
	#producto crud
	url(r'producto/$', views.ProductoListView.as_view(), name='producto_list'),
	url(r'producto/add/$', views.ProductoCreate.as_view(), name='producto_add'),
	url(r'producto/(?P<pk>[0-9]+)/$', views.ProductoUpdate.as_view(), name='producto_update'),
	url(r'producto/(?P<pk>[0-9]+)/delete/$', views.ProductoDelete.as_view(), name='producto_delete'),
	
	#cliente crud
	url(r'cliente/$', views.ClienteListView.as_view(), name='cliente_list'),
	url(r'cliente/add/$', views.ClienteCreate.as_view(), name='cliente_add'),
	url(r'cliente/(?P<pk>[0-9]+)/$', views.ClienteUpdate.as_view(), name='cliente_update'),
	url(r'cliente/(?P<pk>[0-9]+)/delete/$', views.ClienteDelete.as_view(), name='cliente_delete'),

	#sede crud
	url(r'sede/$', views.SedeListView.as_view(), name='sede_list'),
	url(r'sede/add/$', views.SedeCreate.as_view(), name='sede_add'),
	url(r'sede/(?P<pk>[0-9]+)/$', views.SedeUpdate.as_view(), name='sede_update'),
	url(r'sede/(?P<pk>[0-9]+)/delete/$', views.SedeDelete.as_view(), name='sede_delete'),

	#compra crud
	url(r'compra/$', views.CompraListView.as_view(), name='compra_list'),
	url(r'compra/add/$', views.CompraCreate.as_view(), name='compra_add'),
	url(r'compra/(?P<pk>[0-9]+)/$', views.CompraUpdate.as_view(), name='compra_update'),
	url(r'compra/(?P<pk>[0-9]+)/delete/$', views.CompraDelete.as_view(), name='compra_delete'),

	#consultar compra clientes
	url(r'consulta/$', views.consulta, name='consulta'),
	url(r'cliente/(?P<pk>[0-9]+)/compras.pdf$', views.cliente_pdf, name='cliente_compras_pdf'),
	url(r'cliente/(?P<pk>[0-9]+)/compras.json$', views.cliente_json, name='cliente_compras_json'),
]