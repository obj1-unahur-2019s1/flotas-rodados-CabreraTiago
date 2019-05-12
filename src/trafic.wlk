object trafic {

	var property interior
	var property motor
	const pesoBase = 4000

	method capacidad() {
		return interior.capacidad()
	}

	method velocidadMaxima() {
		return motor.velocidadMaxima()
	}

	method peso() {
		return pesoBase + interior.peso() + motor.peso()
	}

	method color() {
		return "blanco"
	}

}

object interiorComodo {

	method capacidad() = 5

	method peso() = 700

}

object interiorPopular {

	method capacidad() = 12

	method peso() = 1000

}

object motorPulenta {

	method peso() = 800

	method velocidadMaxima() = 130

}

object motorBataton {

	method peso() = 500

	method velocidadMaxima() = 80

}

