class NoSePuedeEfectuarLaReservaException inherits Exception{}

class NoSePuedeConcretarLaOperacionException inherits Exception{}

class Empleado {
	var property cuenta
	var property operacionRealizada
	
	

	method cobrarComisionPor(valorOperacion){cuenta+= valorOperacion}
	
	method reservar(unaPropiedad, unCliente){
	    if(!unaPropiedad.estaReservada())
	         unaPropiedad.agregarReserva(unCliente)
	    else
	    
	     throw new NoSePuedeEfectuarLaReservaException(message="El inmueble ya se encuentra reservado")
	    
	}	
	   
		
     
   method concretarOperacion(unaPropiedad, unCliente){
           if(self.verificarQueEsteReservado(unaPropiedad, unCliente)){
           	   const operacion = self.cobrarElValor(unaPropiedad, unCliente) //concretar operacion, venta o alquiler del inmueble seria cobrarse los mismos??
           	   self.agregarOperacionRealizada(operacion)
           }else{
           throw new NoSePuedeConcretarLaOperacionException(message = "No esta reservada por :" + unCliente)
           
           }	   
           
	   

    }
    
    method agregarOperacionRealizada(unaOperacion){
    	return unaOperacion.add(unaOperacion)
    }
				
	method verificarQueEsteReservado(unaPropiedad, unCliente) {
					return unaPropiedad.reservado() == unCliente
				}
				
	method cobrarElValor(unaPropiedad, unCliente) {
					return unCliente. pagarOperacionInmueble(unaPropiedad.valorInmueble())
				}
				
}    
     
    
