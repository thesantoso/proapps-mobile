import 'package:flutter/material.dart';
import 'package:proapps/widgets/footer.dart';
import 'package:proapps/widgets/loginform.dart';
import 'package:proapps/widgets/allbutton.dart'; // Import ButtonLogin

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LoginForm(formKey: _formKey), // Pass the formKey to LoginForm
                  const SizedBox(height: 20),
                  ButtonLogin(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Aksi saat tombol "Login" diklik dan form valid
                        Navigator.of(context).pushNamed("/home");
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Footer(), // Footer widget
        ],
      ),
    );
  }
}
