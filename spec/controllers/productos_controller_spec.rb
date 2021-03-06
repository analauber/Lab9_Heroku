require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ProductosController do

 it 'producto invalido' do
	tc = TipoComida.new(tipo_comida: "Mexicana")
   	ub = Ubicacion.new(provincia: "Heredia", canton: "Heredia", distrito: "Heredia")
	r = Restaurante.new(nombre_restaurante:"KFC", telefono:"123456789", correo_electronico: "prueba@ejemplo.com", tipo_comida: tc, ubicacion: ub)
	tp = TipoProducto.new(tipo_producto: "Almuerzo")
 	p1 = Producto.new(nombre_producto: "Pollo a la milanesa", precio: 1235, restaurante: r, tipo_producto: tp)
	p1.should be_valid 
	p2 = Producto.new(nombre_producto: "Chifrijo", precio: 500, tipo_producto: tp)
	p2.should_not be_valid 
	p3 = Producto.new(nombre_producto: "Chifrijo", precio: "asdasd4", restaurante: r, tipo_producto: tp)
	p3.should_not be_valid 
 end

end
