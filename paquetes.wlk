object paqueteSimple {
  //V A R I A B L E
  var estaPago = false
  //R E T O R N O
  method estaPago() = estaPago
  //E F E C T O
  method pagarPaquete() {
    estaPago = true
  }
}

object paquetito{
  //R E T O R N O
  method estaPago() = true
  method sePuedeEntregar(unMensajero, unDestino) = true
}
object paqueton {
  //C O N S T
  const valorPorDestino = 100
  const destinos = []

  //V A R I A B L E S
  var pagoPorDestino = 0

  //R E T O R N O
  method sePuedeEntregar(unMensajero, unDestino) = destinos.all({unDestino -> unMensajero.puedeArribar(unDestino)}) && self.estaPago()
  method estaPago() = self.valorTotalDelPaquete() == pagoPorDestino
  method valorTotalDelPaquete() = destinos.size() * valorPorDestino

 //E F E C T O
  method agregarDestino(unDestino){
   destinos.add(unDestino)
  }

  method pagarPorDestino(){
   pagoPorDestino += 100
  }

}
