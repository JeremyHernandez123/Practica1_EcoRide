import 'vehicle.dart';

class Cotxe extends Vehicle{
  int places; 
  bool requereixLicencia; 

  Cotxe(String id, int bateriaPercentatge, double preuPerMinut, this.places, this.requereixLicencia ) 
    : super(id, bateriaPercentatge, preuPerMinut); 

  @override
  double calcularCostReserva(int minuts){
    double preu = minuts * preuPerMinut; 
    double suplementFiltreEcologic = 2.0;  
    return preu + suplementFiltreEcologic; 
  }
}