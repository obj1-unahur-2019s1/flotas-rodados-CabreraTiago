class Dependencia {

	const flota = []
	var property empleados
	const pedidos = []

	method agregarAFlota(rodado) {
		flota.add(rodado)
	}

	method quitarDeFlota(rodado) {
		flota.remove(rodado)
	}

	method pesoTotalFlota() {
		return flota.sum{ rodado => rodado.peso() }
	}

	method estaBienEquipada() {
		return flota.size() >= 3 and flota.all{ rodado => rodado.velocidadMaxima() >= 100 }
	}

	method capacidadTotalEnColor(color) {
		return flota.filter{ rodado => rodado.color() == color }.sum{ rodado => rodado.capacidad() }
	}

	method colorDelRodadoMasRapido() {
		return flota.max{ rodado => rodado.velocidadMaxima() }.color()
	}

	method capacidadFaltante() {
		return empleados - flota.sum{ rodado => rodado.capacidad() }
	}

	method esGrande() {
		return empleados >= 40 and flota.size() >= 5
	}

	method agregarPedido(pedido) {
		pedidos.add(pedido)
	}

	method quitarPedido(pedido) {
		pedidos.remove(pedido)
	}

	method totalPasajerosPedidos() {
		return pedidos.sum{ pedido => pedido.cantPasajeros() }
	}

	method pedidosNoSatisfechos() {
	}

	method colorIncompatibleTotal(color) {
		return pedidos.all{ pedido => pedido.coloresIncompatibles().contains(color) }
	}

	method relajarPedidos() {
		pedidos.forEach{ pedido => pedido.relajar()}
	}

	method conjuntoColoresIncompatibles() {
	}

}

