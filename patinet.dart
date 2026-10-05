import 'dart:math';

import 'vehicle.dart';
import 'user.dart';

class Patinet extends Vehicle {
  int velocitatMaxima;

  Patinet(String id, int bateriaPercentatge, double preuPerMinut, this.velocitatMaxima) 
    : super(id, bateriaPercentatge, preuPerMinut); 


  @override
  double calcularCostReserva(int minuts, {User? user}){
    double preu = minuts * preuPerMinut; 
    if(user != null && user.esVIP){
      preu = preu * 0.9; 
      return preu; 
    }
    return preu; 
  }
}