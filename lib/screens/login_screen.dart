import 'package:flutter/material.dart';
import 'package:shopping_app/screens/signup_screen.dart';

import 'forgot_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 120,),
                  Image.asset("images/freed.png"),
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        //Giong TextFied nhung label text se nhay len khi nhan vao
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter Email",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email), //Them Icon trong TextField
                          ),
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          obscureText: true, //an mat khau
                          decoration: InputDecoration(
                              labelText: "Enter Password",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.remove_red_eye)
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => ForgotScreen()
                                ));
                              },
                              child: Text(
                                "Porgot Password",
                                style: TextStyle(
                                  color: Color(0xFFDB3022),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600
                              ),)
                          ),
                        ),
                        SizedBox(height: 50,),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => HomeScreen()
                            ));
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size.fromHeight(55),
                              backgroundColor: Color(0xFFDB3022),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)
                              )
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't Have an Account?", style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15
                            ),),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => SignupScreen()
                                  ));
                                },
                                child: Text("Sign Up", style: TextStyle(
                                    color: Color(0xFFDB3022),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600
                                ),)
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}
