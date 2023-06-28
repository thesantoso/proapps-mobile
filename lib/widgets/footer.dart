import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Text(
        "© 2023 Your Company. All Rights Reserved.",
        style: TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
