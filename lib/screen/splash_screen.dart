import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'music_list_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isVisible = false;
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 1300), () {
      setState(() {
        isVisible = !isVisible;
      });
    });

    /// after splash screen navigate to music List screen
    Timer(const Duration(milliseconds: 2500), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MusicListScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: isVisible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1500),
              child: Image.asset(
                "assets/images/youtube.png",
                height: 300,
                width: 300,
              ),
            ),

            ///
            DefaultTextStyle(
                softWrap: true,
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: "primary",
                  color: Colors.blueAccent,
                ),
                child: AnimatedTextKit(
                  pause: const Duration(milliseconds: 300),
                  animatedTexts: [
                    WavyAnimatedText(
                      "Video Nest",
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

/// Splash Screen => DONE
