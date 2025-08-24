import armas.*
import elementos.*

object luisa {
    var personajeActivo = personajeVacio

    method asignarPersonaje(personaje) {
        personajeActivo = personaje
    }

    method personajeActual() {
        return personajeActivo
    }

    method aparece(elemento) {
        personajeActivo.encontrar(elemento)
    }
}

object floki {
    var arma = jabalina

    method cambiarArma(nuevaArma) {
        arma = nuevaArma
    }

    method armaActual() {
        return arma
    }
    
    method encontrar(elemento) {
        if(arma.estaCargada()) {
        elemento.recibirAtaque(arma.potencia())
        arma.usar()
    }  
    }
}

object mario {
    var valorRecolectado = 0
    var ultimoElemento = ningunElemento

    method valorRecolectado() {
        return valorRecolectado
    }

    method encontrar(elemento) {
        elemento.recibirTrabajo()
        valorRecolectado = valorRecolectado + elemento.valorOtorgado()
        ultimoElemento = elemento
    }
    method estaFeliz() {
        return valorRecolectado >= 50 || ultimoElemento.altura() >= 10
    }

}
object personajeVacio {

}