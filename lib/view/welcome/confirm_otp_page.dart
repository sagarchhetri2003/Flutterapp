import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../app/routes/app_routes.dart';

class LoginScreenConfirmOTP extends StatefulWidget {
  const LoginScreenConfirmOTP({super.key});

  @override
  State<LoginScreenConfirmOTP> createState() => _LoginScreenConfirmOTPState();
}

class _LoginScreenConfirmOTPState extends State<LoginScreenConfirmOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   children: [
      //     Container(
      //       child: Image.asset("assets/images/short_logo.png"),
      //     ),
      //     const Text(
      //       "Enter Your Number",
      //       style: TextStyle(
      //         fontWeight: FontWeight.bold,
      //         fontSize: 30,
      //       ),
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    height: 280,
                    width: double.infinity,
                    child: Image.asset("assets/images/33.png")),
                const Text("Register",style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Text("Enter your Phone number to continue, we will send you OTP to verify.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey.shade700,

                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical:5),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xffeeeeee),
                            blurRadius: 10,
                            offset: Offset(0,4)
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black.withOpacity(0.13))
                  ),
                  child: Stack(
                    children: [
                      InternationalPhoneNumberInput(
                        onInputChanged: (value){

                        },
                        cursorColor: Colors.black,
                        formatInput: false,
                        selectorConfig: const SelectorConfig(
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        ),
                        inputDecoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 15,left: 0),
                            border: InputBorder.none,
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 16,
                            )
                        ),),
                      Positioned(
                          left: 90,
                          top: 8,
                          bottom: 8,
                          child: Container(
                            height: 40,
                            width: 1,
                            color: Colors.black.withOpacity(0.13),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                MaterialButton(
                  onPressed: (){
                    // Navigator.of(context).pushReplacement(WelcomeScreen() as Route<Object?>);
                  },
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                  minWidth: double.infinity,
                  child: const Text("Enter OTP",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 15
                      ),),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, AppRoute.mainpageRoute);
                      },
                          child: const Text("Login",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),))
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
