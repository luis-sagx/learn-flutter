void main() async {
  print('inicio del programa');
  
  try{
    final value = await httpGet('https://hola-mundo.com');
    print(value);
  } catch (e) {
    print('Error -> $e');
  }
  
  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la peticion';
  // return 'tenemos el valor de la peticion';
}  