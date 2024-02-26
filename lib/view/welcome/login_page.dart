import 'package:flutter/material.dart';

import '../../app/routes/app_routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              // _forgotPassword(context),
              _footer(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return  Column(
      children: [
        const Text(
          "Welcome Back",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Enter your credential to login"),
        // Container(
        //     height: 18.0,
        //     width: 18.0,
        //     color: Colors.blue,
        //     child: new IconButton(
        //       padding: new EdgeInsets.all(0.0),
        //       color: Colors.blue,
        //       icon: new Icon(Icons.login, size: 100.0,color: Colors.blue,),
        //       onPressed: null,
        //     )
        // ),
        SizedBox(
          height: 100,
          width: 120,
          child: Align(
            alignment: Alignment.center,
            child: IconButton(
              onPressed: () {  },
              icon: Icon(Icons.login_outlined,size: 80,color: Colors.blue,),

            ),
          ),
        )
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none
              ),
              fillColor: Colors.deepPurple.withOpacity(0.2),
              filled: true,
              prefixIcon: const Icon(Icons.person)),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Colors.deepPurple.withOpacity(0.2),
            filled: true,
            prefixIcon: const Icon(Icons.password),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoute.otpRoute);

          },
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Color(0xFF1565C0),
          ),
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 20,color: Colors.white),
          ),
        ),

      ],
    );
  }

  _footer(context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoute.welcomeRoute);
          },
          child: const Text("Forgot password?",
            style: TextStyle(color: Colors.purple),
          ),
        ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text("Dont have an account? "),
        TextButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoute.signupRoute);

        },
        child: const Text("Sign Up", style: TextStyle(color: Colors.purple),)
        )
        ],
        ),
      ],
    );
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have an account? "),
        TextButton(
            onPressed: () {
            },
            child: const Text("Sign Up", style: TextStyle(color: Colors.purple),)
        )
      ],
    );
  }
}