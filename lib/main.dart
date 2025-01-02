import 'package:flutter/material.dart';
import 'package:video_nest_player/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen()
    );
  }
}



/// In this video we create Video Player App
/// OFFLINE VIDEO PLAYER
/// steps
/// SIMPLE Steps
/// Step 1
/// Project setup => DONE
/// Step 2
/// Create Splash Screen => DONE
///
/// Step 3
/// Music List screen Create => DONE
///
/// Step 4
/// Music Player Screen => DONE
///
///  FINAL