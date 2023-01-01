import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/home/ui/home_page.dart';

class AuthorizationPage extends StatelessWidget {
  static const routeName = '/authorization';

  const AuthorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xFF262626),
          ),
          onPressed: () {},
          splashRadius: 22,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 80.0,
                ),
                child: SvgPicture.asset('assets/instagram_logo.svg'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 39.0,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 13.5,
                      horizontal: 15,
                    ),
                    fillColor: const Color(0xFFFAFAFA),
                    filled: true,
                    hintText: 'Username',
                    hintStyle: const TextStyle(
                      color: Color(0xFFC8C8C8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 0.5,
                        color: Color(0xFFC0BEBE),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 0.5,
                        color: Color(0xFFC0BEBE),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 12.0,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 13.5,
                      horizontal: 15,
                    ),
                    fillColor: const Color(0xFFFAFAFA),
                    filled: true,
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Color(0xFFC8C8C8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 0.5,
                        color: Color(0xFFC0BEBE),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 0.5,
                        color: Color(0xFFC0BEBE),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 19.0,
                  right: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Forgot Password?',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: const TextStyle(
                          color: Color(0xFF3797EF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 44.0,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.routeName);
                    },
                    child: const Text(
                      'Log in',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 37.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: SvgPicture.asset(
                        'assets/facebook_logo.svg',
                        width: 17.0,
                        height: 17.0,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Log in with Facebook',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: const TextStyle(
                          color: Color(0xFF3797EF),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 41.5,
                ),
                child: Row(
                  children: const <Widget>[
                    Expanded(
                      child: Divider(
                        indent: 16.0,
                        endIndent: 30.5,
                      ),
                    ),
                    Text(
                      'OR',
                      style: TextStyle(
                        color: Color(0xFF999999),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        indent: 30.5,
                        endIndent: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 41.5,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: const TextStyle(
                      color: Color(0xFF999999),
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign up.',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: const TextStyle(
                          color: Color(0xFF3797EF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 101.0),
                child: Divider(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 32.5,
                ),
                child: Text(
                  'Instagram from Facebook',
                  style: TextStyle(
                    color: Color(0xFF999999),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
