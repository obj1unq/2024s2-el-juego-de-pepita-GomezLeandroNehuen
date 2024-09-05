import wollok.game.*
import pepita.*

object nido {
    const property position = game.at(3,5) // se usa const porque el nido está fijo, sino sería var.

    method image(){
        return "nido.png"
    }
}

object silvestre {
     const presa = pepita

     method image() {
        return "silvestre.png"
     }

     method position() {
        return game.at(presa.position().x().max(3),0)
     }
}

