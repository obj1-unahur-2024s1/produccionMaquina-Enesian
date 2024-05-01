object registroProduccion {
	const diasDeProduccion = [43,18,49,62,33,39]
	
	method agregarARegistro(prod){diasDeProduccion.add(prod)}
	
	method quitarARegistro(prod){diasDeProduccion.remove(prod)}
	
	method algunDiaSeProdujo(cantidad)= diasDeProduccion.contains(cantidad)
	
	method maximoValorDeProduccion()= diasDeProduccion.max()
	
	method valoresDeProduccionPares()= 
	diasDeProduccion.filter({dia => dia.even()})
	
	method produccionEsAcotada(n1,n2)=
	diasDeProduccion.all({prod => prod.between(n1,n2)})
	
	method produccionesSuperioresA(cuanto)=
	diasDeProduccion.filter({dia => dia > cuanto})
	
	method produccionesSumando(n)=
	diasDeProduccion.map({dia => dia + n})
	
	method totalProducido()= diasDeProduccion.sum()
	
	method ultimoValorDeProduccion()= diasDeProduccion.last()
	
	method primerValorDeProduccion()= diasDeProduccion.first()
	
	method cantidadProduccionesMayorALaPrimera()=
	diasDeProduccion.count({dia => dia > self.primerValorDeProduccion()})
}
