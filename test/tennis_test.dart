import 'package:test/test.dart';
import 'package:tennis/tennis.dart';

void main() {

  late Partido partido;
  
  setUp(() =>
  partido = Partido()
  );

  test('cuando el partido comienza debe dar 0 - 0 LOVE', (){
    expect(partido.marcador, equalsIgnoringCase('${love}'));
  });

  test('Inicia y el jugador1 anota => 15-LOVE', () {
    partido.puntoPara(Jugador.p1);
    expect(partido.marcador, equalsIgnoringCase('15-${love}'));
    
  });
  test('si van empatados a 15 => 15-15', () {
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);
  expect(partido.marcador, equalsIgnoringCase('15-15'));
  });

  test('si van 40  a 40 => DEUCE', () {
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);

  expect(partido.marcador, equalsIgnoringCase('${deuce}'));
    
  });
  
  test('si van 60 a 60 => DEUCE', () {
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);

  expect(partido.marcador, equalsIgnoringCase(deuce));
    
  });

  test('Si vamos 50-60 => Advantage P2', () {
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);    

  expect(partido.marcador, equalsIgnoringCase('${advantage} 2'));
  });
 

 test('si van 40-15 y anota el 1 gana => Victoria 1', () {
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);

  expect(partido.marcador, equalsIgnoringCase('${victoria} 2'));
   
 });

 test('misterio', () {
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p1);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);
  partido.puntoPara(Jugador.p2);


 expect(partido.marcador, equalsIgnoringCase('${victoria} 1'));
 });

}


