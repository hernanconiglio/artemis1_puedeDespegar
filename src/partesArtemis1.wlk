object orion {
	var paracaidasMontado = false
	var escudoDeCalorListo = false
	var bateriasModuloDeServicioOk = false
	method montarParacaidas() { paracaidasMontado = true }
	method fijarEscudoDeCalor() {escudoDeCalorListo = true}
	method cargarBateriasModulo() {bateriasModuloDeServicioOk = true}
	method estaOK() = paracaidasMontado && escudoDeCalorListo && bateriasModuloDeServicioOk
}

object huecoCapsula {
	var paracaidasMontado = false
	var escudoDeCalorListo = false
	var bateriasModuloDeServicioOk = false
	method montarParacaidas() {}
	method fijarEscudoDeCalor() {}
	method cargarBateriasModulo() {}
	method estaOK() = paracaidasMontado && escudoDeCalorListo && bateriasModuloDeServicioOk

}

object propulsorPrincipal {
	const motores = [motorPrincipal1,motorPrincipal2,motorPrincipal3,motorPrincipal4]
	var nivelDeCombustibleOK = false
	
	method nivelDeCombustibleOK() = nivelDeCombustibleOK
	method cargarCombustible() {nivelDeCombustibleOK=true}
	method refrigerarMotores() {
		motores.forEach({motor=>motor.refrigerarMotor()})
	}
	method estaOK() = nivelDeCombustibleOK && motores.all({motor=>motor.estaRefrigerado()})
}

object coheteSolidoIzquierdo {
	var ignicion = false
	method estaOK() = ignicion
	method darleIgnicion() {ignicion=true}
}

object coheteSolidoDerecho {
	var ignicion = false
	method estaOK() = ignicion
	method darleIgnicion() {ignicion=true}
}

object motorPrincipal1 {
	var estaRefrigerado = false
	method refrigerarMotor() {estaRefrigerado=true}
	method estaRefrigerado() = estaRefrigerado
}

object motorPrincipal2 {
	var estaRefrigerado = false
	method refrigerarMotor() {estaRefrigerado=true}	
	method estaRefrigerado() = estaRefrigerado
}

object motorPrincipal3 {
	var estaRefrigerado = false
	method refrigerarMotor() {estaRefrigerado=true}
	method estaRefrigerado() = estaRefrigerado
}

object motorPrincipal4 {
	var estaRefrigerado = false
	method refrigerarMotor() {estaRefrigerado=true}
	method estaRefrigerado() = estaRefrigerado
}