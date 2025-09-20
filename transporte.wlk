object bicicleta {
  method peso() = 5
}

object camion {
  var cantAcoplado = 1
  method peso() = 500 * cantAcoplado
  method cambiarAcoplado(unValor){
    cantAcoplado = unValor.max(0)
  }
}
