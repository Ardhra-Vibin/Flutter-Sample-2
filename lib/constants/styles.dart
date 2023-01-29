import 'package:flutter/material.dart';

class Styles{
  normalS(
    {
      required double fontS,
      required FontW,
      required Color color, 
    }
  ){
    return TextStyle(
     fontSize: fontS,
     fontWeight: FontW,
     color: color,
    );
  }
}