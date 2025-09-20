import transporte.*
import destinos.*
import paquetes.*
object roberto {

  var property peso = 50  
  var paquete = paqueteSimple
  var credito = true
  var transporte = camion

  //R E T O R N O
  method peso() = peso + transporte.peso()
  method paquete() = paquete
  method transporte() = transporte
  method puedeLlamar() = credito
  method puedeEntregar() = self.paquete().destino().puedePasar(self) and self.paquete().estaPago()
  
  //E F E C T O
  method cambiarPaquete(unPaquete) {
    paquete = unPaquete
  }
  method cambiarCredito(unValor) {
    credito = unValor
  }
  method cambiarTransporte(unTransporte) {
    transporte = unTransporte
  }
}

object neo {
  //V A R I A B L E S
  var paquete = paqueteSimple
  
  //R E T O R N O
  method peso() = 40
  method paquete() = paquete
  method puedeLlamar() = true
  method puedeEntregar() = self.paquete().destino().puedePasar(self) and self.paquete().estaPago()
    
  //E F E C T O
  method cambiarPaquete(unPaquete) {
    paquete = unPaquete
  }
}
object chuckNorris {
  //V A R I A B L E S
  var paquete = paqueteSimple
  
  //R E T O R N O
  method peso() = 80
  method paquete() = paquete
  method puedeLlamar() = true
  method puedeEntregar() = self.paquete().destino().puedePasar(self) and self.paquete().estaPago()
    
  //E F E C T O
  method cambiarPaquete(unPaquete) {
    paquete = unPaquete
  }

}

