object registroProduccion {
	const diasDeProduccion = [43,18,49,62,33,39]
	
	method algunDiaSeProdujo(cantidad)= diasDeProduccion.contains(cantidad)
	
	method maximoValorDeProduccion()= diasDeProduccion.max()
	
	method valoresDeProduccionPares()= 
	diasDeProduccion.filter({dia => dia % 2 == 0})
	
	method produccionEsAcotada(n1,n2)=
	diasDeProduccion.all({prod => prod >= n1 and prod <= n2})
	
	method produccionesSuperioresA(cuanto)=
	diasDeProduccion.filter({dia => dia > cuanto})
	
	method produccionesSumando(n)=
	diasDeProduccion.map({dia => dia + n})
	
	method totalProducido()=
	diasDeProduccion.sum()
	
	method ultimoValorDeProduccion()=
	diasDeProduccion.last()
	
	method cantidadProduccionesMayorALaPrimera()=
	diasDeProduccion.count({dia => dia > diasDeProduccion.first()})
}
