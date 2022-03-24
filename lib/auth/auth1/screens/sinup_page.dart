import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:re_ui/auth/auth1/widgets/header_sinup.dart';
import 'package:re_ui/auth/auth1/widgets/text_c.dart';
import 'package:re_ui/auth/auth1/widgets/text_field_c.dart';

import 'login_page.dart';
import 'verification_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff172437),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const HeaderSignUp(),
                Positioned(
                    top: 40,
                    left: 20,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)),
                        child: Icon(Icons.arrow_back_ios_outlined,
                            size: 22, color: Colors.grey[700]),
                      ),
                    )),
                const Positioned(
                    top: 40,
                    right: 80,
                    child: Icon(Icons.trip_origin,
                        color: Colors.white38, size: 35)),
                const Positioned(
                    top: 90,
                    left: 60,
                    child: Icon(Icons.trip_origin,
                        color: Colors.white38, size: 35)),
                const Positioned(
                    top: 165,
                    left: 60,
                    child: TextCustom(
                        text: 'Create Account',
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 30),
            const TextFieldCustom(
                hint: 'Your full name goes here', isPassword: false),
            const SizedBox(height: 20),
            const TextFieldCustom(
                hint: 'Your email address goes here', isPassword: false),
            const SizedBox(height: 20),
            const TextFieldCustom(
                hint: 'Your phone number here', isPassword: false),
            const SizedBox(height: 20),
            const TextFieldCustom(
                hint: 'Your password here', isPassword: false),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerificationPage()),
                  );
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAEFF5),
                      borderRadius: BorderRadius.circular(7.0)),
                  child: Center(
                      child: TextCustom(
                          text: 'Sign Up',
                          color: Colors.grey[700]!,
                          fontSize: 17)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const TextCustom(text: 'Or', color: Colors.grey, fontSize: 15),
            const SizedBox(height: 10),
            const TextCustom(
                text: 'Connect with', color: Colors.grey, fontSize: 15),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(FontAwesomeIcons.google, color: Colors.white),
                const SizedBox(width: 10),
                Container(width: 2, color: Colors.white, height: 20),
                const SizedBox(width: 10),
                const Icon(FontAwesomeIcons.facebook, color: Colors.white),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextCustom(
                    text: 'Already Have an account? ',
                    color: Colors.grey,
                    fontSize: 15),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LogInPage()),
                      );
                    },
                    child: const TextCustom(
                        text: 'Sign In',
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
      ),
    );
  }
}
