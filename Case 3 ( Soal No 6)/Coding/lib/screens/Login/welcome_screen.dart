import 'package:flutter/material.dart';
import 'package:flutter_authentication/screens/Login/signin_screen.dart';
import 'package:flutter_authentication/utilities/colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/welcome1.jpg",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  const Text(
                    "Let's Order ur Food",
                    style: TextStyle(
                      fontSize: 30,
                      color: kWhiteClr,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Taste the delicious traditional Indonesian fat and of course at an affordable price!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kWhiteClr,
                        fontSize: 16,
                        height: 1.6,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 15),

                  // login buttons
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const SignInScreen())));
                    },
                    child: Container(
                      height: 55,
                      width: 190,
                      decoration: BoxDecoration(
                          color: kWhiteClr,
                          borderRadius: BorderRadius.circular(100)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Start Your Journey",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
