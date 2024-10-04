import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

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
      borderRadius: BorderRadius.circular(15.0),
    );
  }

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
                    "Enter OTP",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                TextFieldPin(
                    // textController: textEditingController,
                    autoFocus: false,
                    codeLength: 4,
                    alignment: MainAxisAlignment.center,
                    defaultBoxSize: 55.0,
                    margin: 10,
                    selectedBoxSize: 46.0,
                    textStyle: TextStyle(fontSize: 16),
                    defaultDecoration: _pinPutDecoration.copyWith(
                        border: Border.all(color: Colors.grey)),
                    selectedDecoration: _pinPutDecoration,
                    onChange: (code) {
                    }),
              ],
            ),
        ),
      ),
    );
  }
}
