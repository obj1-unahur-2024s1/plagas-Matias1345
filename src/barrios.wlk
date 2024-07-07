class Barrio{
	var property elementos = []
	
	method esCopado() = self.elementosBuenos() > self.elementosNoBuenos()
	
	method elementosBuenos() = elementos.count({e => e.esBueno()})
	
	method elementosNoBuenos() = elementos.count({e => !e.esBueno()})
}