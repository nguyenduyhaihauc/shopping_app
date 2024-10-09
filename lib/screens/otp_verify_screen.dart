import 'package:flutter/material.dart';
import 'package:shopping_app/screens/recovery_screen.dart';
// import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

// Man nay dung de nhap ma OTP duoc gui tu so dien thoai
class OTPVerifyScreen extends StatefulWidget {
  const OTPVerifyScreen({super.key});

  @override
  State<OTPVerifyScreen> createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  TextEditingController textEditingController = new TextEditingController(text: "");

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
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Enter OTP",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const SizedBox(height: 100,),
                const Text(
                  "Please enter the OTP code that we have sent to you to your number"
                      ", please check your number and enter OTP to verify.",
                  style: TextStyle(
                      fontSize: 15
                  ),
                ),
                const SizedBox(height: 50,),
                // TextFieldPin(
                //     textController: textEditingController,
                //     autoFocus: false,
                //     codeLength: 4,
                //     alignment: MainAxisAlignment.center,
                //     defaultBoxSize: 60.0,
                //     margin: 10,
                //     selectedBoxSize: 55.0,
                //     textStyle: TextStyle(fontSize: 16),
                //     defaultDecoration: _pinPutDecoration.copyWith(
                //         border: Border.all(color: Colors.grey)),
                //     selectedDecoration: _pinPutDecoration,
                //     onChange: (code) {
                //       setState(() {
                //
                //       });
                //     }),
                const SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => RecoveryScreen()
                    ));
                  },
                  child: Text(
                    "Verify",
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
