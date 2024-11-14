import 'package:clean_architecture_flutter/core/themes/color.dart';
import 'package:flutter/material.dart';

class AuthGrandientButton extends StatelessWidget {
  final String text;
  const AuthGrandientButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            ColorList.gradient1,
            ColorList.gradient2,
          ],
        ),
      ),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorList.transparentColor,
              shadowColor: ColorList.transparentColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              fixedSize: const Size(434, 55)),
          child: Text(
            text,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          )),
    );
  }
}
