import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/screens/recovery_screen.dart';

import 'otp_screen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {

  bool cirButton = false;

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                      "Forgot Password",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const SizedBox(height: 60,),
                const Text(
                  "Please enter your email address. You will receive a link"
                      " to create or set a new password via email",
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: emailController,
                  onChanged: (val) {
                    if (val != "") {
                      setState(() {
                        cirButton = true;
                      });
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                            emailController.clear();
                        });
                      },
                      child: const Icon(
                        CupertinoIcons.multiply,
                        color: Color(0xFFDB3022),
                      ),
                    )
                  ),
                ),
                const SizedBox(height: 50,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => RecoveryScreen()
                    ));
                  },
                  child: Text(
                    "Send Code",
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20,),
                    const Text('OR'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => OTPScreen()
                        ));
                      },
                      child: const Text("Verify Using Number", style: TextStyle(
                          color: Color(0xFFDB3022),
                          fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),
                    )
                  ],
                ),

              ],
            ),
        ),
      ),
    );
  }
}
