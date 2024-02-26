import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../app/routes/app_routes.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  late  VideoPlayerController _controller;
  @override
  void initState(){
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/logo_animated')..initialize().then((_) {
      setState(() {});
      _controller.play();
      _controller.setLooping(true);

      Timer(const Duration(seconds: 2), () {
        Navigator.pushNamed(context, AppRoute.welcomeRoute);
      });
    });

    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _controller.value.isInitialized?
        AspectRatio(aspectRatio: _controller.value.aspectRatio,
        child:VideoPlayer(_controller),
        )
        : const CircularProgressIndicator()
      ),
    );
  }
}
