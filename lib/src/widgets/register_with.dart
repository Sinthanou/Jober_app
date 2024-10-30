import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterWith extends StatelessWidget {
  const RegisterWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(5)
            ),
            child: SvgPicture.asset(
              'assets/icon/google-color-svgrepo-com.svg',
              width: 40,
              height: 40,
            ),
          ),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(5)
            ),
            child: SvgPicture.asset(
              'assets/icon/facebook-option-svgrepo-com.svg',
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}