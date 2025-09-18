void main(){
  print('inicio del programa');
  
  httpGet('https://hola-mundo.com')
    .then((value){
      print(value);
    })
    .catchError((e){
      print('Error -> $e');
    });
  
  print('fin del programa');
}

Future<String> httpGet(String url){
  return Future.delayed( const Duration(seconds: 1), () {
    throw 'error en la peticion http';
    //return 'Respuesta de la peticion http';
  });
}  