import 'package:flutter/material.dart';
import 'package:flutter_sample_2/screens/gender_selection/gender_selection.dart';
import 'package:flutter_sample_2/screens/onboarding_screens/splash_screen.dart';

Map<String, WidgetBuilder> routes(){
  return {
SplashScreen.routeName : (ctx) => SplashScreen(),
GenderSelection.routeName : (ctx) => const GenderSelection(),
  };
}