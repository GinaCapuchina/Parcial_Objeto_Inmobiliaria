class Cliente {
	
	var property cuenta
		
	method solicitarReserva(unEmpleado, unaPropiedad){
		unEmpleado.reservar(unaPropiedad,self)
	}
	
	method concretarOperacionPublicacion(unEmpleado, unaPropiedad){
		unEmpleado.concretar(unaPropiedad)
	}
	
	method pagarOperacionInmueble(valorOperacion){
		cuenta-= valorOperacion
	}
}
