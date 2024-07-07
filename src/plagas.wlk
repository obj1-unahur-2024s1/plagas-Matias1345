class Plaga{
	var property poblacion
	
	method nivelDeDanio()
	
	method transmitenEnfermedades() = self.poblacion() >= 10 and self.condicionAdicional()
	
	method condicionAdicional()
	
	method aumentarPoblacionEn(valor){
		poblacion = poblacion + valor
	}
	
	method producirEfectoEnSi(){
		self.aumentarPoblacionEn(0.10)
		self.efectoAdicional()
	}
	
	method efectoAdicional()
}

class PlagaCucarachas inherits Plaga{
	var property pesoPromedio
	
	override method nivelDeDanio() = self.poblacion() / 2
	
	override method condicionAdicional() = self.pesoPromedio() >= 10
	
	override method efectoAdicional(){
		pesoPromedio = pesoPromedio + 2
	}
}

class PlagaPulgas inherits Plaga{
	override method nivelDeDanio() = self.poblacion() * 2
}

class PlagaGarrapatas inherits PlagaPulgas{
	override method efectoAdicional(){
		self.aumentarPoblacionEn(0.10)
	}
}

class PlagaMosquitos inherits Plaga{
	override method nivelDeDanio() = self.poblacion() 
	
	override method condicionAdicional() = self.poblacion() % 3 == 0
}




