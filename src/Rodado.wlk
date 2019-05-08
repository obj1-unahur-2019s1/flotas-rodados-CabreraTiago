import Interior.*
import Motor.*

class Rodado {

	var capacidad
	var property velocidadMaxima = 0
	var property color
	var property peso = 0
	var property tieneGas = false

	method capacidad() {
		return if (tieneGas) {
			capacidad--
		} else {
			capacidad
		}
	}

	method capacidad(unValor) {
		capacidad = unValor
	}

}

object trafic {

	var property interior
	var property motor

	method capacidad() {
		return interior.capacidad()
	}

	method velocidadMaxima() {
		return motor.velocidadMaxima()
	}

	method peso() {
		return 4000 + interior.peso() + motor.peso()
	}

	method color() {
		return "blanco"
	}

}

