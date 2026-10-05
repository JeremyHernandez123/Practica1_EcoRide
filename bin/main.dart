import '../cotxe.dart';
import '../patinet.dart';
import '../vehicle.dart';
import '../user.dart';

void main(){
  List<Vehicle> flota = [
    Patinet("1", 80, 0.10, 25)..actualitzarUbicacio(67.8, 87.3), 
    Patinet("2", 19, 0.20, 35)..actualitzarUbicacio(66.8, 2), 
    Patinet("3", 50, 0.40, 50)..actualitzarUbicacio(50.76, 4.3), 
    Cotxe("4", 79, 0.70, 5, true)..actualitzarUbicacio(78.5, 4.7),
    Cotxe("5", 100, 1, 9, true)..actualitzarUbicacio(89, 53)
  ]; 

    flota[2].enUs = true;


  var batMesAlta = flota.reduce((a , b){

    if(a.bateriaPercentatge > b.bateriaPercentatge){
      return a; 
    } else {
      return b; 
    }
  });

  print('Vehicle amb més bateria: ${batMesAlta.id} (${batMesAlta.bateriaPercentatge}%)');


  var disponibles = flota.where((v) => v.bateriaPercentatge > 20 && !v.enUs).toList();
  print('Vehicles amb bateria > 20% i lliures:');
  for (var v in disponibles) {
    print('  ${v.id} - ${v.bateriaPercentatge}% - ${v.estatBateria()} - enUs: ${v.enUs}');
  }


  var usuari = User(id: '1', nom: 'Jeremy', saldo: 20.0, correu: 'jeremy@gmail.com', esVIP: true);

  double cost = flota[1].calcularCostReserva(15);
  print('Cost de la reserva de 15 minuts: ${cost} €');

  flota[1].actualitzarUbicacio(39.57, 2.65);
  var (lat, lng) = flota[1].obtenirCoordenades();
  print('Coordenades del patinet: $lat, $lng');

  try {
    usuari.recarregarSaldo(-10.0);
  }catch (IOException) {
    throw Exception("No pot haver saldo negatius"); 
  }
}

