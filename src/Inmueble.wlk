/** First Wollok example */
class Inmueble {
	var property tipoDeOperacion
	var property metroCuadradoInmueble
	var property cantidadDeAmbientes
	var property operacion
	var property zona
	var property reservado
	
	
	method valorInmueble(){
		return self.valorPorTipoInmueble() + zona.plus() 
	}
	
	method valorPorTipoInmueble()

	method agregarReserva(unCliente){reservado.add(unCliente)}
	
	method estaReservada(){
		return reservado != null
	}
   	
}


/*class TipoDeOperacion{
	method comisionPorAlquiler(unInmueble){
		return unInmueble.valorInmueble() * self.variacion()
	}
} VER MAS ADELANTE SI DEJO COMO CLASE O INTERFAZ
* */

class Alquiler{
	var property cantidadDeMesesQueSePactoContrato
	
	method comisionPorAlquiler(unInmueble){
		 return cantidadDeMesesQueSePactoContrato * unInmueble.valorInmuebleSegunLaZona()/ 50000
	}
	
}


class Venta{
	var property porcentajeSobreElValorInmueble
	
	method comisionPorVenta(unInmueble){
	     return unInmueble.valorInmuebleSegunLaZona() * porcentajeSobreElValorInmueble
	}
	
	
}

object casa inherits Inmueble{
	var property valorCasa = 0
	override method  valorPorTipoInmueble(){
		return valorCasa
	}
	
	
	
}

object ph inherits Inmueble{
	
	override method  valorPorTipoInmueble(){
		 return (metroCuadradoInmueble * 14000).min(500000)
	}
}

object departamento inherits Inmueble{
	
	override method valorPorTipoInmueble(){
	      return cantidadDeAmbientes * 350000	
	}
}
