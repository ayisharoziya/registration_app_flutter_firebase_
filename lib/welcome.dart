import 'package:flutter/material.dart';
import 'package:registration_app_flutter/Loggin.dart';
import 'package:registration_app_flutter/signup.dart';


class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(height: 50),

              Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 100),
              Image.network(
"data:image/png;base64,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",height:300,width: 350, 
            ),
              SizedBox(height: 15),

              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Loggin()),
                    );
                  },
                  child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 15),

              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.tealAccent,
                    foregroundColor: Colors.black,
                    side: BorderSide.none,
                  ),
                  child: Text(
                    "sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,fontSize: 20
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
