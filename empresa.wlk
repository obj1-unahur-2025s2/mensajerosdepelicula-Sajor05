object empresaDeMensajeria{
  //C O N S T
  const property mensajeros = #{}
  
  //R E T O R N O
  method estaContratado(unMensajero) = mensajeros.contains(unMensajero)

  method siEsGrande() = mensajeros.size()>2

  method cantEmpleados() = mensajeros.size() 
    
  method primeroPuedeEntregar(unDestino, unPaquete) = mensajeros.first().puedeEntregar(unDestino, unPaquete)
  
  method pesoUltimoMensajero() = mensajeros.last().peso()

  //E F E C T O
  method contratarMensajero(unMensajero) {
    mensajeros.add(unMensajero)
  }
  method despedirMensajero(unMensajero){
    mensajeros.remove(unMensajero)
  }  
  method despedirATodosLosMensajeros(){
    mensajeros.clear()
  }
  

}