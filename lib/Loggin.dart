import 'package:flutter/material.dart';
import 'package:registration_app_flutter/Service.dart';
import 'package:registration_app_flutter/forgot.dart';
import 'package:registration_app_flutter/signup.dart';

class Loggin extends StatefulWidget {
  const Loggin({super.key});

  @override
  State<Loggin> createState() => _LogginState();
}

class _LogginState extends State<Loggin> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
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
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Login to your account",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                controller: emailcontroller,
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
              SizedBox(height: 20),

              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 179, 177, 177),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Forgot()),
                  );
                },
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forgot password?  ",
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
              ),
              SizedBox(height: 20),

              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    loggin(
                      Email: emailcontroller.text,
                      password: passwordcontroller.text,
                      context: context,
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.tealAccent,
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Text("Don't have an account?  "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Image.network("assets/login.png"),
            ],
          ),
        ),
      ),
    );
  }
}
