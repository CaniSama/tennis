
enum Jugador {p1,p2}
final String victoria ='Victoria';
final String advantage ='Advantage';
final String love = 'Love';
final String deuce = 'Deuce';


class Partido{
 int _puntosP1 = 0;
 int _puntosP2 = 0;
 bool _finalizado =false;
 
 
 String get marcador => _marcador();

 String _marcador(){
  Map<int,String> valores = {
    0: 'LOVE',
    1: '15',
    2: '30',
    3: '40',
    
  };

  if (_recienInicia) {
    return '${love}';
  }
  if (_esEmpatea40omas) {
    return '${deuce}';
  }
  if(_siEmpatadosymasDe40ambos){
    if (_puntosP1 > _puntosP2) {
      return '${advantage} 1';
      
    }
    return '${advantage} 2';
  }

  int diferencia = (_puntosP1 - _puntosP2).abs();
  {
    
    if(_puntosP1 >= 4){ 
      return '${victoria} 1';   
    }
    if (_puntosP2 >= 4) { 
      return '${victoria} 2';
    }
 
  }


  return '${valores[_puntosP1]}-${valores[_puntosP2]}';
 }

 bool _esPosibleLaVictoria() {
  int diferencia = (_puntosP1 - _puntosP2).abs();
  bool masde40 = (_puntosP1 >= 4) || (_puntosP2 >= 4);
  return (diferencia > 2) && masde40;

   
 }

 bool get _siEmpatadosymasDe40ambos => _puntosP1 >= 3 && _puntosP2 >= 3 && _puntosP1 != _puntosP2;

 bool get _recienInicia => _puntosP1 ==0 && _puntosP2 == 0;

 bool get _esEmpatea40omas => _puntosP1 >= 3 && _puntosP2 >= 3 && _puntosP1 == _puntosP2;
 
  void puntoPara(Jugador j) {
    _finalizado =_esPosibleLaVictoria();
    if(_finalizado) return;
    if ( j == Jugador.p1) {
      _puntosP1 = _puntosP1 + 1;
      return;
    }
    _puntosP2++;
  }
 
}
 
  
