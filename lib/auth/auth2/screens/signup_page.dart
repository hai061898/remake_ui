import 'package:flutter/material.dart';
import 'package:re_ui/auth/auth2/screens/login_page.dart';

import 'package:re_ui/auth/auth2/widgets/bottom_sinup.dart';
import 'package:re_ui/auth/auth2/widgets/header_login.dart';
import 'package:re_ui/auth/auth2/widgets/text_c.dart';
import 'package:re_ui/auth/auth2/widgets/text_fileld_c.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff284855),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const HeaderLogin(),
            const Positioned(
                top: 60,
                left: 20,
                child: TextCustom(
                    text: 'Create an',
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            const Positioned(
                top: 110,
                left: 20,
                child: TextCustom(
                    text: 'Account',
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            const BottomRegister(),
            const Positioned(
                top: 250,
                child: TextFieldCustom(label: 'Full Name', isPass: false)),
            const Positioned(
                top: 320,
                child: TextFieldCustom(label: 'Email', isPass: false)),
            const Positioned(
                top: 390,
                child: TextFieldCustom(label: 'Password', isPass: true)),
            const Positioned(
                top: 460,
                child:
                    TextFieldCustom(label: 'Confirm Password', isPass: true)),
            Positioned(
                top: 550,
                left: 15,
                child: TextButton(
                    onPressed: () {},
                    child: const TextCustom(
                        text: 'Sign Up',
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold))),
            Positioned(
                top: 720,
                left: 15,
                child: Row(
                  children: [
                    const TextCustom(
                        text: 'Already have an account? ',
                        color: Colors.white,
                        fontSize: 17),
                    GestureDetector(
                        onTap: ()  {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: const TextCustom(
                            text: 'Sign In',
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
