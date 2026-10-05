
import 'dart:collection';

class User{
  String _id; 
  String _nomComplet; 
  double _saldo; 
  String correu; 
  bool esVIP = false; 

  User.nou({required String id, required String nom, required this.correu}) 
    : _id = id,
      _nomComplet = nom,
      _saldo = 0.0;

  
  User({required String id, required String nom, required double saldo, required this.correu, this.esVIP = false})
    : _id = id,
      _nomComplet = nom,
      _saldo = saldo;

  double get saldo {
    return _saldo; 
  }  
  String get id {
    return _id; 
  } 

  recarregarSaldo(double quantitat){
    if(quantitat < 0){
      throw Exception("No pot haver una quantitat negativa"); 
    } else {
      _saldo = _saldo + quantitat; 
    }
  }

  


}