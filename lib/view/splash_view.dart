import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Splash Screen'),
          ),
          SizedBox(height: 8,),
          Center(
            child: CircularProgressIndicator(),
          ),
          SizedBox(height: 8,),
          Text(
            'V1.0.0',
            style: TextStyle(color: Colors.blue,fontSize: 18),
          )
        ],
      ),
    );
  }
}
