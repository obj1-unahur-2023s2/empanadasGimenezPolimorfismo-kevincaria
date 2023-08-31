object galvan{
    var property sueldo = 150000
    var totalDinero 
    var totalDeuda

    method totalDinero() = totalDinero

    method totalDeuda() = totalDeuda

    method totalCobrado(){}

    method cobrarSueldo(){
        totalDinero += sueldo 
        self.gastar(totalDeuda)
    }

    method gastar(cuanto){
        totalDeuda += 0.max(cuanto - totalDinero)
        totalDinero = 0.max(totalDinero - cuanto)
    }

}

object baigorria{
    var property empanadas = 0
    var property precioEmpanada = 150
    var sueldo = precioEmpanada * empanadas
    var totalDinero 
    var totalCobrado

    method dinero() = dinero

    method sueldo() = sueldo

    method totalCobrado() = totalCobrado

    method cobrarSueldo(){
        dinero += sueldo 
        totalCobrado += sueldo
    }
}

object gimenez{
    var dinero = 3000000

    method pagarA(empleado) {
        dinero -= empleado.sueldo()
        empleado.cobrarSueldo()
    }
}