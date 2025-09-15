object paqueteSimple {
  var estaPago = false
  method estaPago() = estaPago
  method pagarPaquete() {
    estaPago = true
  }
}

object paquetito{
  method estaPago(){
    return true
  }
  method sePuedeEntregar(unMensajero, unDestino){
    return true
  }
}
object paqueton {

 const valorPorDestino = 100
 var pagoPorDestino = 0
 const destinos = []

 method agregarDestino(unDestino){
  destinos.add(unDestino)
 }
 method estaPago(){
  return self.valorTotalDelPaquete() == pagoPorDestino
 }
 method valorTotalDelPaquete(){
  return destinos.size() * valorPorDestino
 }
 method pagarPorDestino(){
  pagoPorDestino += 100
 }
 method sePuedeEntregar(unMensajero, unDestino){

  return destinos.all({unDestino -> unMensajero.puedeArribar(unDestino)}) && self.estaPago()
 }
}
