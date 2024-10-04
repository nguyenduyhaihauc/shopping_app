import 'package:flutter/material.dart';
import 'package:shopping_app/screens/otp_verify_screen.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                Text(
                  "Please enter your number. You will receive a OTP"
                      " to create or set a new password via number",
                  style: TextStyle(
                      fontSize: 15
                  ),
                ),
                SizedBox(height: 50,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter Number",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => OTPVerifyScreen()
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
              ],
            ),
        ),
      ),
    );
  }
}
