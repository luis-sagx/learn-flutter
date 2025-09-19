void main(){
  final Square mySquare = Square(side: -10);
  
  //mySquare.side = -5;
  
  print('area: ${mySquare.area}');
  
}

class Square {
  double _side;
  
  Square({ required double side })
    // assert es para validar argumentos en tiempo de ejecucion
    : assert(side >= 0, 'side must be >=0'),
      _side = side;
  
  // el getter no recibe argumentos y retorna un valor
  double get area {
    return _side * _side; 
  }

  // el setter recibe un argumento y no retorna nada (void)
  set side(double value) {
    print('setting new value $value');
    
    if(value < 0) throw 'Value must be >=0';
    
    _side = value;
  }
  
  
}