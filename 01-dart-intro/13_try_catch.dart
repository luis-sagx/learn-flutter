void main() async {
  print('inicio del programa');
  
  try{
    final value = await httpGet('https://hola-mundo.com');
    print('Exito -> $value');
  } on Exception catch (e) {
    print('Tenemos una excepcion -> $e');
  } catch (e) {
    print('Algo terrible paso -> $e');
  } finally {
    print('Fin del try-catch');
  }
   
  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  
  throw Exception('No hay parametros en el URL');
  
  // return 'tenemos el valor de la peticion';
}  