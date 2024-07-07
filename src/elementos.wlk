class Elemento{
	method esBueno()
	
	method recibirAtaqueDe(plaga){
		plaga.producirEfectoEnSi()
	}
}

class Hogar inherits Elemento{
	var property nivelMugre
	var property confort
	
	override method esBueno() = self.nivelMugre() <= self.confort() / 2

	override method recibirAtaqueDe(plaga){
		super(plaga)
		nivelMugre = nivelMugre + plaga.nivelDeDanio()
	}
}

class Huerta inherits Elemento{
	var property capacidadProd
	
	override method esBueno() = self.capacidadProd() > nivelHuertas.valor()
	
	override method recibirAtaqueDe(plaga){	
		super(plaga)
		capacidadProd = capacidadProd - (plaga.nivelDeDanio() * 0.10)
		if(plaga.transmitenEnfermedades()){
			capacidadProd = capacidadProd - 10
		}
	}
}

object nivelHuertas{
	var property valor
}

class Mascota inherits Elemento{
	var property salud
	
	override method esBueno() = self.salud() > 250
	
	override method recibirAtaqueDe(plaga){	
		super(plaga)
		if(plaga.transmitenEnfermedades()){
			salud = salud - plaga.nivelDeDanio()
		}	
	}
}
