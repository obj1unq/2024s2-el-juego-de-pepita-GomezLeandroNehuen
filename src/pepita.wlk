import wollok.game.*
import posiciones.*
import extras.*

object pepita {
	var energia = 100
	var property position = game.at(3,5)  // game.origin() = (0,0)
	const destino = nido
	const cazador = silvestre

	//	method position() {
	//	  return position
	//	}

	//	method position (_position){
	//		position = _position
	//}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	method imgage() {
		return "pepita" + self.estado() + ".png"
		
	}

	method estado(){
		return if (self.estaEnDestino()) {
			"-grande"
		} else if (self.estaAtrapada()){
			"-gris"
		}else {
			""
		}
	}

	//method text() {
	//	return ((" x: " + position.x()) + " y: ") + position.y()
	//}

	method mover(direccion) {
		position = direccion.siguiente(self.position())
	}

	method estaEnDestino(){
		return position == destino.position()
	}

	method estaAtrapada(){
		return position == cazador.position()
	}
}




