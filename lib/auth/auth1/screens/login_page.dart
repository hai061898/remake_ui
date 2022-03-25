import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:re_ui/auth/auth1/widgets/header_login.dart';
import 'package:re_ui/auth/auth1/widgets/text_c.dart';
import 'package:re_ui/auth/auth1/widgets/text_field_c.dart';

import 'signup_page.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff172437),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  const HeaderLogin(),
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
                      top: 60,
                      right: 80,
                      child: Icon(Icons.trip_origin,
                          color: Colors.white38, size: 35)),
                  const Positioned(
                      top: 120,
                      left: 90,
                      child: Icon(Icons.trip_origin,
                          color: Colors.white38, size: 35)),
                  Positioned(
                      left: MediaQuery.of(context).size.width * 0.35,
                      top: 130,
                      child: const TextCustom(
                          text: 'Welcome',
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  Positioned(
                      left: MediaQuery.of(context).size.width * 0.34,
                      top: 170,
                      child: const TextCustom(
                          text: 'Sign In to continue',
                          color: Colors.white,
                          fontSize: 17)),
                ],
              ),
              const TextFieldCustom(
                  hint: 'Your email address goes here', isPassword: false),
              const SizedBox(height: 40),
              const TextFieldCustom(hint: 'Password', isPassword: true),
              const SizedBox(height: 10),
              Text('Forgot Password?',
                  style: GoogleFonts.getFont('Inter',
                      color: Colors.grey, fontSize: 15)),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAEFF5),
                      borderRadius: BorderRadius.circular(7.0)),
                  child: Center(
                      child: TextCustom(
                          text: 'Sign In',
                          color: Colors.grey[700]!,
                          fontSize: 17)),
                ),
              ),
              const SizedBox(height: 10),
              const TextCustom(text: 'Or', color: Colors.grey, fontSize: 15),
              const SizedBox(height: 10),
              const TextCustom(
                  text: 'Connect with', color: Colors.grey, fontSize: 15),
              const SizedBox(height: 20),
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
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextCustom(
                      text: 'Don\'t have Account? ',
                      color: Colors.grey,
                      fontSize: 15),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()),
                      );
                      },
                      child: const TextCustom(
                          text: 'Sign Up',
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
        ));
  }
}
