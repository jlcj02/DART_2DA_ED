Future<void> main()async {
  print(await saludar());

  CuentaRegresiva();
  finDeAnio2();
}
  /// clase Future

Future<String> saludar() async{
  return "Hola mundo";
}

//Future<String> => "Hola mundo ";


//Función que cuenta del 10 a 0
void CuentaRegresiva (){
  for (int i=10; i>0;i--)
    print(i);
  print("Felix año");
}

Future <void> finDeAnio2() async{
  for (int i=10;i>0;i--){
    print(i);
    await Future.delayed(Duration(seconds:1));
  }
  print("Feliz año");
}


Future<String> nombreDeUsuario() async {
  try{
    print("Se Ejecuta");
    final nombre = await getNombre();
    print("El nombre es $nombre");
    return nombre;
  } catch(err) {
    print("Ocurrión un error");
    return '';
  } finally {
    print("Siempre se ejecuta");
  }
}

Future <String> getNombre() async{
  await Future.delayed((Duration(seconds: 2)));
  throw Exception("Error!!!");
//  return "Usuario ok";
}
