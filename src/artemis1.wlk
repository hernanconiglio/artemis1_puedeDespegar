import partesArtemis1.*

object artemis1 {
	const cohetesSolidos = []
	var capsula = huecoCapsula
	const propulsionPrincipal = propulsorPrincipal
	
	method puedeDespegar()  = self.estaTodoOK()

	method armarcohetesPrimeraFase(motorSolidoIzquierdo,motorSolidoDerecho) {
		cohetesSolidos.add(motorSolidoIzquierdo)
		cohetesSolidos.add(motorSolidoDerecho)
	}
	
	method montarCapsula(moduloCapsula) {capsula = moduloCapsula}
	
	
	method estaTodoOK() =
	  cohetesSolidos.all({c => c.estaOK()}) &&
	  capsula.estaOK() &&
	  propulsionPrincipal.estaOK()
}