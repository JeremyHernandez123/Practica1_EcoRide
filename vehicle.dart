import 'GPSLocation.dart';

abstract class Vehicle with Gpslocation{
  String id; 
  int bateriaPercentatge; 
  bool enUs = false; 
  double preuPerMinut ; 

  Vehicle(this.id, this.bateriaPercentatge, this.preuPerMinut); 

  String estatBateria(){
    
    String percentatge = ""; 
    switch(bateriaPercentatge){
      case >= 80:
        percentatge = "Alta"; 
        break; 
      case >= 20 && <= 79 : 
        percentatge = "Mitjana"; 
        break;
      case < 20 : 
        percentatge = "Crítica (Requereix Càrrega)"; 
        break;
    }

    return percentatge; 
  }

  double calcularCostReserva(int minuts); 
}