// void main() {
//   print('Estamos a punto de pedir datos');

//   httpGet('https://api.nasa.com/aliens').then((data) {
//     print(data);
//   }).catchError((err) {
//     print('Error: $err');
//   });

//   print('Ultima linea');
// }

// Future<String> httpGet(String url) {
//   return Future.delayed(const Duration(seconds: 1), () {
//     throw 'No se pudo realizar la peticion';

//     // return 'Respuesta de la peticion http';
//   });
// }

// Async y Await

void main() async {
  print('Estamos a punto de pedir datos');

  // httpGet('https://api.nasa.com/aliens').then((data) {
  //   print(data);
  // }).catchError((err) {
  //   print('Error: $err');
  // });

  try {
    final value = await httpGet('https://api.nasa.com/aliens');
    print(value);
  } catch (e) {
    print('Error: $e');
  }

  print('Ultima linea');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw 'No se pudo realizar la peticion';
  // return 'Respuesta de la peticion http';
}
