object Inmobiliaria{
	var property operaciones
	var property propiedades
	//var property empleado -- parametro o atributo??
	
	method cobraComision(empleado){
		operaciones.forEach({operacion => empleado.cobrar(operacion)})
		
	}
	
	method agregarPropiedad(unaPropiedad){
		propiedades.add(unaPropiedad)
	}
	
	
	
}
