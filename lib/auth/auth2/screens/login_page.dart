import 'package:flutter/material.dart';
import 'package:re_ui/auth/auth2/screens/signup_page.dart';

import 'package:re_ui/auth/auth2/widgets/bottom_login.dart';
import 'package:re_ui/auth/auth2/widgets/header_login.dart';
import 'package:re_ui/auth/auth2/widgets/text_c.dart';
import 'package:re_ui/auth/auth2/widgets/text_fileld_c.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const HeaderLogin(),
            const Positioned(
                top: 60,
                left: 20,
                child: TextCustom(
                    text: 'Welcome',
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            const Positioned(
                top: 110,
                left: 20,
                child: TextCustom(
                    text: 'Back',
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            const BottomLogin(),
            const Positioned(
                top: 270,
                child: TextFieldCustom(label: 'Email', isPass: false)),
            const Positioned(
                top: 340,
                child: TextFieldCustom(label: 'Password', isPass: true)),
            const Positioned(
                top: 420,
                left: 15,
                child: TextCustom(
                    text: 'Forgot Password?',
                    color: Colors.grey,
                    fontSize: 16)),
            Positioned(
                top: 460,
                left: 15,
                child: TextButton(
                    onPressed: () {},
                    child: TextCustom(
                        text: 'Sign In',
                        color: Colors.grey[700]!,
                        fontSize: 25,
                        fontWeight: FontWeight.bold))),
            Positioned(
                top: 720,
                left: 15,
                child: Row(
                  children: [
                    const TextCustom(
                        text: 'Don\'t have an account? ',
                        color: Colors.white,
                        fontSize: 17),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()),
                          );
                        },
                        child: const TextCustom(
                            text: 'Sign Up',
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
