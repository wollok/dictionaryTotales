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

* Constructores con parámetros para facilitar la instanciación de cada rendición
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
Date[2016-09-21] - $ 250
Date[2016-10-19] - $ 50
Date[2016-10-20] - $ 120
Date[2016-10-21] - $ 600
```

## Warning
Si no reutilizamos la misma referencia a la fecha de hoy, los totales por fecha no sumarizan:

```scala
>>> reporter.mostrarTotalesPorFecha()
Date[2016-09-21] - $ 250
Date[2016-10-19] - $ 50
Date[2016-10-20] - $ 120
Date[2016-10-21] - $ 500
Date[2016-10-21] - $ 100
```


Esto es por la definición de equals para Date que se ve utilizado en Dictionary.
