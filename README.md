# Ejemplo de uso de Dictionary para totalizar
 
[![Build Status](https://github.com/wollok/dictionaryTotales/actions/workflows/ci.yml/badge.svg)](https://github.com/wollok/dictionaryTotales/actions/workflows/ci.yml)


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
5/18/2024 - $ 600
4/18/2024 - $ 250
5/17/2024 - $ 120
5/16/2024 - $ 50
```
