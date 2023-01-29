import 'package:flutter/material.dart';
import 'package:flutter_sample_2/provider/Gender_selection_provider/gender_selection_provider.dart';
import 'package:flutter_sample_2/provider/onboarding_provider/onboarding_provider.dart';
import 'package:flutter_sample_2/routes/routes.dart';
import 'package:flutter_sample_2/screens/onboarding_screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: OnboardingProvider()),
        ChangeNotifierProvider.value(value: GenderSelectionProvider())
      ],
      child: MaterialApp(
        title: 'Sample Two',
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
        ),
        routes: routes(),
        home:  SplashScreen(),
      ),
    );
  }
}

