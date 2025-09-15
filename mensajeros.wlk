import transporte.*
import destinos.*
import paquetes.*
object roberto {
  //V A R I A B L E S
  const paquetes = []
  var property peso = 50
  var credito = true
  var transporte = camion

  //R E T O R N O
  method peso() = peso + transporte.peso()
  method transporte() = transporte
  method puedeLlamar() = credito
  method puedeEntregar(unDestino,unPaquete) = unDestino.puedePasar(self) and unPaquete.estaPago()
  
  //E F E C T O
  method agregarPaquete(unPaquete) {
    paquetes.add(unPaquete)
  }
  method cambiarCredito(unValor) {
    credito = unValor
  }
  method cambiarTransporte(unTransporte) {
    transporte = unTransporte
  }
}

object neo {
  
  //R E T O R N O
  method peso() = 40
  method puedeLlamar() = true
  method puedeEntregar(unDestino,unPaquete) = unDestino.puedePasar(self) and unPaquete.estaPago()
}
object chuckNorris {
  //R E T O R N O
  method peso() = 80
  method puedeLlamar() = true
  method puedeEntregar(unDestino,unPaquete) = unDestino.puedePasar(self) and unPaquete.estaPago()

}


object empresaDeMensajeria{
  
  const property mensajeros = #{}
  
  method contratarMensajero(unMensajero) {
    mensajeros.add(unMensajero)
  }
  method despedirMensajero(unMensajero){
    mensajeros.remove(unMensajero)
  }
  
  method despedirATodosLosMensajeros(){
    mensajeros.clear()
  }
  
  method estaContratado(unMensajero) = mensajeros.contains(unMensajero)

  method siEsGrande() = mensajeros.size()>2

  method cantEmpleados() = mensajeros.size() 
    
  method primeroPuedeEntregar(unDestino, unPaquete) =
   mensajeros.first().puedeEntregar(unDestino, unPaquete)
  
  method pesoUltimoMensajero() = mensajeros.last().peso()
}

