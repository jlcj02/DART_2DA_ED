import 'dart:async';

/***
 * 
 * Manejo streams
 * 
 */

void main() {
  /// Crear un stream
  /// Los streams tambien tienen un control de typos ej <String>
  final streamController = StreamController<String>();

  streamController.stream.listen((event) {
    print("Stream: $event");
  },
  onError: (error) {
    print("Error: $error");
  },
  onDone: () {
    print("Se completo el stream");
  },
  cancelOnError: false
  );

  /// Agregar datos al stream
  streamController.sink.add("Hola Mundo");

  /// Control de errores 
  /// Forzar un error 
  streamController.sink.addError("Error");

  streamController.close();

  // streamController.sink.add("Hola Mundo"); // Error

  print("Fin del main");
}