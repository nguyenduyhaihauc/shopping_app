import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              const Text(
                "Forgot Password",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 60,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Reset Code",
                    border: OutlineInputBorder(),
                    prefix: Icon(Icons.numbers),
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "New Password",
                  border: OutlineInputBorder(),
                  prefix: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye)
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(),
                  prefix: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye)
                ),
              ),
              const SizedBox(height: 50,),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //     builder: (context) => HomeScreen()
                  // ));
                },
                child: Text(
                  "Reset Password",
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
