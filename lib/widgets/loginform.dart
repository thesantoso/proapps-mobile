import 'package:flutter/material.dart';
import 'package:proapps/utils/site_data.dart';
import 'package:proapps/widgets/dropdown_site.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey; // Accept formKey as a parameter

  const LoginForm({
    required this.formKey,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey, // Use the provided formKey
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 196),
          Image.asset('assets/icon/logo-small.png'),
          SizedBox(height: 10),
          Image.asset('assets/icon/Login.png'),
          SizedBox(height: 10),
          const Text("Login untuk masuk kedalam proapps"),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          DropdownSite(
            selectedCity: siteList[0],
            onChanged: (value) {},
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                // Aksi saat teks "Forgot Password?" diklik
              },
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Color(0xFF27B29B),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          // // SizedBox(height: 10),
          // // ElevatedButton(
          // //   onPressed: () {
          // //     if (_formKey.currentState!.validate()) {
          // //       // Aksi saat tombol "Login" diklik dan form valid
          // //       Navigator.of(context).pushNamed("/home");
          // //     }
          // //   },
          // //   child: Text('Login'),
          // ),
        ],
      ),
    );
  }
}
