import 'package:flutter/material.dart';
class partido  {
  int jugador1 = 0;
  int jugador2 = 0;

  void incrementarpuntos(int player) {
   {
      if (player == 1) {
        jugador1++;
      } else if (player == 2) {
        jugador2++;
      }
    };
  }

  void reiniciopuntos() {
     {
      jugador1 = 0;
      jugador2 = 0;
    };
  }  
 }

