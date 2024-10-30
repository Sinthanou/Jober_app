import 'package:fine_jobs_app/src/widgets/login.dart';
import 'package:fine_jobs_app/src/widgets/sign_up.dart';
import 'package:fine_jobs_app/src/widgets/logo.dart';
import 'package:fine_jobs_app/src/widgets/register_with.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String activeButton = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ClipOval(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/1200px-Flag_of_the_United_Kingdom_%281-2%29.svg.png",
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "En",
                style: TextStyle(color: Colors.grey[600], fontSize: 18),
              ),
            ),
          ],
        ),
        actions: [

          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 100,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  color: activeButton == "login" ? Colors.green[800] : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      activeButton = "login";
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: activeButton == "login" ? Colors.white : Colors.green[800],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 100,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  color: activeButton == "signUp" ? Colors.green[800] : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      activeButton = "signUp";
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                      color: activeButton == "signUp" ? Colors.white : Colors.green[800],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            Logo(),
            const SizedBox(height: 40),
            activeButton == "signUp" ? SignUp() : Login(),
            RegisterWith()
          ],
        ) 
      ),
    );
  }
}
