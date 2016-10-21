class Rendicion {
	
	var persona
	var fecha
	var total
	
	constructor(_persona, _fecha, _total) {
		persona = _persona
		fecha = _fecha
		total = _total
	}

	method persona() = persona
	method total() = total
	method fecha() = fecha	
}

class Reporter {
	
	const rendiciones = []
	
	constructor() {
		const hoy = new Date()
		rendiciones.add(new Rendicion("Juan", hoy, 100))
		rendiciones.add(new Rendicion("Juan", new Date().minusMonths(1), 250))
		rendiciones.add(new Rendicion("Juan", new Date().minusDays(1), 120))
		rendiciones.add(new Rendicion("Ricky", hoy, 500))
		rendiciones.add(new Rendicion("Ricky", new Date().minusDays(2), 50))
	}
	
	method totalPorCliente() =
		rendiciones.fold(new Dictionary(), { acum, rendicion => 
			var total = acum.getOrElse(rendicion.persona(), { 0 })
			total += rendicion.total()
			acum.put(rendicion.persona(), total)
			acum
		})

	method mostrarTotalesPorCliente() {
		self.totalPorCliente().forEach({ persona, total =>
			console.println(persona + " - $ " + total)
		})
	}
		
				
	method totalPorFecha() =
		rendiciones.fold(new Dictionary(), { acum, rendicion => 
			var total = acum.getOrElse(rendicion.fecha(), { 0 })
			total += rendicion.total()
			acum.put(rendicion.fecha(), total)
			acum
		})
		
	method mostrarTotalesPorFecha() {
		self.totalPorFecha().forEach({ fecha, total =>
			console.println(fecha.toString() + " - $ " + total)
		})
	}
			
}