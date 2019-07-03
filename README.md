# Ejemplo de uso de Dictionary para totalizar
 
[![Build Status](https://travis-ci.org/wollok/dictionaryTotales.svg?branch=master)](https://travis-ci.org/wollok/dictionaryTotales)


Tenemos una serie de rendiciones de gastos de 

* Una persona (por ahora es un String)
* Una fecha
* Cuánto gastó

## Requerimientos

* Saber el total gastado por fecha
* Saber el total gastado por persona

## Conceptos que vemos

* Objetos fecha
* Objetos Dictionary para totalizar por un criterio u otro
* Dado que el test es engorroso elegimos mostrar por consola REPL los resultados

## Cómo se prueba

```scala
>>> const reporter = new Reporter()
>>> reporter.mostrarTotalesPorCliente()
Juan - $ 470
Ricky - $ 550
>>> reporter.mostrarTotalesPorFecha()
a Date[day = 1, month = 7, year = 2019] - $ 50
a Date[day = 2, month = 7, year = 2019] - $ 120
a Date[day = 3, month = 6, year = 2019] - $ 250
a Date[day = 3, month = 7, year = 2019] - $ 600
```

## Warning
Si no reutilizamos la misma referencia a la fecha de hoy, los totales por fecha no sumarizan:

```scala
>>> reporter.mostrarTotalesPorFecha()
a Date[day = 3, month = 6, year = 2019] - $ 250
a Date[day = 1, month = 7, year = 2019] - $ 50
a Date[day = 2, month = 7, year = 2019] - $ 120
a Date[day = 3, month = 7, year = 2019] - $ 500
a Date[day = 3, month = 7, year = 2019] - $ 100
```

Esto es por la definición de equals para Date que se ve utilizado en Dictionary.
