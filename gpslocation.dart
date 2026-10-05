
mixin Gpslocation {
  double latitud = 0.0; 
  double longitud = 0.0; 

  void actualitzarUbicacio(double lat, double lng){
    lat = latitud; 
    lng = longitud; 
  }

  obtenirCoordenades(){
    var coordenades = (latitud, longitud); 
    return coordenades; 
  }
}