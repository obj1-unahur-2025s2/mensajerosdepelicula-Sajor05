object bicicleta {
  method peso() = 5
}

object camion {
  var cantAcoplado = 1
  method peso() = 500 * cantAcoplado
  method agregarPeso() {
    cantAcoplado+=1
  }
  method quitarPeso() {
    cantAcoplado-=1
  }
}
