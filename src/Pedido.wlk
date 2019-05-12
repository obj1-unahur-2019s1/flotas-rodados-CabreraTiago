class Pedido {

	var property distancia
	var property tiempoMaximo
	var property cantPasajeros
	var property coloresIncompatibles = []

	method velocidadRequerida() {
		return distancia / tiempoMaximo
	}

	method primeraCondicion(rodado) {
		return (rodado.velocidadMaxima() - self.velocidadRequerida()) > 10
	}

	method segundaCondicion(rodado) {
		return rodado.capacidad() >= cantPasajeros
	}

	method terceraCondicion(rodado) {
		return !coloresIncompatibles.contains(rodado.color())
	}

	method satisfacePedido(rodado) {
		return self.primeraCondicion(rodado) and self.segundaCondicion(rodado) and self.terceraCondicion(rodado)
	}

	method acelerar() {
		tiempoMaximo--
	}

	method relajar() {
		tiempoMaximo++
	}

}

