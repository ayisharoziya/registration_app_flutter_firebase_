import 'package:flutter/material.dart';
import 'package:registration_app_flutter/Loggin.dart';

class Forgot extends StatelessWidget {
  const Forgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Forgot password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 15),
              Text("Get reset link", style: TextStyle(color: Colors.grey)),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 178, 177, 177),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 198, 194, 194),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "send Link",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.tealAccent,
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ),SizedBox(height: 350),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loggin()),
                  );
                },
                child: Text("Back to login",style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
