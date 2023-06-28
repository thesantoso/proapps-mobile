import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  final VoidCallback? onPressed;

  const ButtonLogin({
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed != null
          ? () {
              Navigator.of(context).pushNamed("/home");
            }
          : null,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF27B29B),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
