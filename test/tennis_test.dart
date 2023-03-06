import 'package:tennis/tennis.dart';
import 'package:test/test.dart';

void main() {

  test('cuando el partido comienza debe dar 0 - 0', (){
  }); 
  
}


enum Jugador {p1,p2}

class Partido{
 int _puntosP1 = 0;
 int _puntosP2 = 0;
 
 
 String get marcador => _marcador();

 String _marcador(){
  Map<int,String> valores = {
    0: 'LOVE',
    1: '15',
    2: '30',
    3: '40',
  };

  if (_puntosP1 ==0 && _puntosP2 == 0 ) {
    return 'LOVE';
  }
  if (_puntosP1 >= 3 && _puntosP2 >= 3 && _puntosP1 == _puntosP2) {
    return 'DEUCE';
  }
  if(_puntosP1 > 3 && _puntosP2 > 3 && _puntosP1 != _puntosP2){
    if (_puntosP1 > _puntosP2) {
      return 'Advantaje 1';
      
    }
    return 'Advantaje 2';
  }
  int diferencia =(_puntosP1 - _puntosP2.abs());
  if(diferencia == 2 ){
    if(_puntosP1 > 4){
        return 'Victoria 1';
    }
    if (_puntosP2 > 4) {
      return 'Victoria 2';
      
    }
  }
  return '${valores[_puntosP1]}-${valores[_puntosP2]}';
 }
 
  void puntoPara(Jugador j) {
    if ( j == Jugador.p1) {
      _puntosP1 = _puntosP1 + 1;
      return;
    }
    _puntosP2++;
  }

}