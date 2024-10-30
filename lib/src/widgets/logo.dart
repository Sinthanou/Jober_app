import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                  "Jober",
                  style: TextStyle(
                    color: Colors.green[800],
                    fontWeight: FontWeight.w800,
                    fontSize: 50
                  ),
                ),

                Text(
                  "Easy way to find your jobs",
                  style: TextStyle(
                    color: Colors.green[800],
                  ),
                ),
                ],
              )
            ],
          ),
        );
  }
}