class Kwid {

	var tanqueAdicional = false

	method tanqueAdicional() {
		tanqueAdicional = not tanqueAdicional
	}

	method tieneTanque() {
		return tanqueAdicional
	}

	method capacidad() {
		return if (tanqueAdicional) {
			3
		} else {
			4
		}
	}

	method velocidadMaxima() {
		return if (tanqueAdicional) {
			120
		} else {
			110
		}
	}

	method peso() {
		return if (tanqueAdicional) {
			1350
		} else {
			1200
		}
	}

	method color() {
		return "azul"
	}

}

