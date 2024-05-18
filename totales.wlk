class Rendicion {
	
	const property persona
	const property fecha
	const property total
	
}

class Reporter {
	const hoy = new Date()
	const rendiciones = [
		new Rendicion(persona = "Juan", fecha = hoy, total = 100),
		new Rendicion(persona = "Juan", fecha = new Date().minusMonths(1), total = 250),
		new Rendicion(persona = "Juan", fecha = new Date().minusDays(1), total = 120),
		new Rendicion(persona = "Ricky", fecha = hoy, total = 500),
		new Rendicion(persona = "Ricky", fecha = new Date().minusDays(2), total = 50)
	]

	method totalPorCliente() {
		const totales = new Dictionary() 	
		rendiciones.forEach{rendicion => 
			var total = totales.getOrElse(rendicion.persona(), { 0 })
			total += rendicion.total()
			totales.put(rendicion.persona(), total)}
		return totales
	}

//  Variante con fold	
//	method totalPorCliente() =
//		rendiciones.fold(new Dictionary(), { acum, rendicion => 
//			var total = acum.getOrElse(rendicion.persona(), { 0 })
//			total += rendicion.total()
//			acum.put(rendicion.persona(), total)
//			acum
//		})

	method mostrarTotalesPorCliente() {
		self.totalPorCliente().forEach({ persona, total =>
			console.println(persona + " - $ " + total)
		})
	}
		
	method totalPorFecha() {
		const totales = new Dictionary()
		rendiciones.forEach{ rendicion => 
			var total = totales.getOrElse(rendicion.fecha(), { 0 })
			total += rendicion.total()
			totales.put(rendicion.fecha(), total)
		}
		return totales
	}

//  Variante con fold	
//	method totalPorFecha() =
//		rendiciones.fold(new Dictionary(), { acum, rendicion => 
//			var total = acum.getOrElse(rendicion.fecha(), { 0 })
//			total += rendicion.total()
//			acum.put(rendicion.fecha(), total)
//			acum
//		})

	method mostrarTotalesPorFecha() {
		self.totalPorFecha().forEach({ fecha, total =>
			console.println(fecha.toString() + " - $ " + total)
		})
	}
			
}