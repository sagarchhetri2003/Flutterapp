import 'package:flutter/material.dart';

import '../../app/routes/app_routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 60,),
         Image.asset(
            "assets/images/logo.png"
          ),
          const Text(
            "Sign Up",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 44,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 5,),
          Text(
            "Continue with Google",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 17,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 40,),
          ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, AppRoute.loginRoute);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                backgroundColor: Color(0xFF1565C0),
                side: const BorderSide(
                  width: 2,
                  color: Color(0xFF1565C0)
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                      Icons.mail_sharp,
                    color: Color(0xFFE1F5FE),
                    size: 30,
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "Continue with Google",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ],
              )
          ),
          SizedBox(height: 15,),

          ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, AppRoute.mainpageRoute);
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 80),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  side: const BorderSide(
                      width: 2,
                      color: Colors.black54
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
              child: const Text(
                "Sign As Guest",
                style: TextStyle(
                  fontSize: 20,
                ),
              )
          ),
        ]
      ),
    );
  }
}
