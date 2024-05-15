void main(){

  final GeomBasica = Geometria("Demo");
  print(GeomBasica);

//  final PuntoA = Punto(X:1,Y:1, nombre:"a");
  final PuntoA = Punto(X:1,Y:1,nombre: "Punto A");  
  print(PuntoA);

  print("Metodo");
  PuntoA.Mostrar();
  print(PuntoA.nombre);
  print(PuntoA.X);
  print(PuntoA.Y);
  print(PuntoA.nombreMayusculas);
  print(PuntoA.CambiarNombre = "B");


}


class Geometria {
  /// Atributos o propiedades mutables
 final String nombre;

  //Argumento posicional 
  Geometria(this.nombre);

}

class Punto extends Geometria{
  /// Atributos o propiedades mutables
//  String nombre;
  final double X;
  final double Y;

  // Argument posicional 
 // Punto (this.X, this.Y, nombre):super(nombre);
  Punto ({required this.X, required this.Y, required nombre}):super(nombre);  

  void Mostrar(){
    print("X=$X, Y=$Y");
  }

  ///getters
  String get nombreMayusculas => nombre.toUpperCase();

  set CambiarNombre(String NuevoNombre){
//    this.nombre = NuevoNombre;
  } 

  // setter
//  set nombreMayusculas(String nombre) {
//    this.nombre = nombre.toUpperCase();
//  }


}
