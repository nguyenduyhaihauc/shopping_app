import 'package:flutter/material.dart';
import 'package:shopping_app/screens/login_screen.dart';

import 'home_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Image.asset("images/freed.png"),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        //Giong TextFied nhung label text se nhay len khi nhan vao
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter Name",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person), //Them Icon trong TextField
                          ),
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter Email",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email), //Them Icon trong TextField
                          ),
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter Number",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.numbers), //Them Icon trong TextField
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
                        SizedBox(height: 15,),
                        TextFormField(
                          obscureText: true, //an mat khau
                          decoration: InputDecoration(
                              labelText: "Confrim Password",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.remove_red_eye)
                          ),
                        ),
                        SizedBox(height: 50,),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => LoginScreen()
                            ));
                          },
                          child: Text(
                            "Sign Up",
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
                            Text("Already have an Account?", style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15
                            ),),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => LoginScreen()
                                  ));
                                },
                                child: Text("Log In", style: TextStyle(
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
