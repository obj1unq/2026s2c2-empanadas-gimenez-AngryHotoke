//Escribir aqui los objetos
object galvan{
    var sueldo = 15000
    var dinero = 0
    var deuda = 0

    method sueldo() {
      return sueldo
    }
    method sueldo(_sueldo) {
      sueldo = _sueldo
    }
    method cobrar() {
      if (deuda == 0){
        dinero = dinero + sueldo
      }else if (deuda > 0 && sueldo >= deuda){
        dinero = sueldo - deuda
        deuda = 0
      }else if(deuda > 0 && sueldo < deuda){
        deuda = deuda - sueldo
      }
    }
    method gastar(monto) {
      if(dinero >= monto){
        dinero = dinero - monto
      }else {
        deuda = deuda + monto - dinero
        dinero = 0
      }
    }
    method deuda() {
      return deuda
    }
    method dinero() {
      return dinero
    }
}
object baigorria {
  var cantidadDeVentasRealizadas = 0
  const comision = 15
  var totalCobrado = 0

  method sueldo() {
    return cantidadDeVentasRealizadas * comision
  }
  method venta(cantidad) {
    cantidadDeVentasRealizadas = cantidadDeVentasRealizadas + cantidad
  }
  method totalCobrado() {
    return totalCobrado
  }
  method cobrar() {
    totalCobrado = totalCobrado + self.sueldo()
    cantidadDeVentasRealizadas = 0  
  }
}
object gimenez {
  var fondos = 300000

  method pagar(empleado) {
    fondos = fondos - empleado.sueldo()
    empleado.cobrar()
  }
  method fondos() {
    return fondos
  }
}
