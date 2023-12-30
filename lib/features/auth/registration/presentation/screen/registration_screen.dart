import 'package:auto_route/auto_route.dart';
import 'package:door_with_rfid/common/app_fonts.dart';
import 'package:door_with_rfid/common/app_text_styles.dart';
import 'package:door_with_rfid/components/custom_elevated_button.dart';
import 'package:door_with_rfid/components/custom_textfield.dart';
import 'package:door_with_rfid/features/auth/login/presentation/screen/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 20),
              SvgPicture.asset(
                "assets/illustrations/form.svg",
                width: 150,
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: fontMontserrat,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(
                    "assets/icons/new.svg",
                    width: 25,
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Text("Please enter your details"),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: CustomTextField(
                  prefixIcon: SvgPicture.asset("assets/icons/user.svg"),
                  isRequired: true,
                  title: "Full Name",
                  hintText: "ex. Vladimir Putin",
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: CustomTextField(
                  prefixIcon: SvgPicture.asset("assets/icons/user.svg"),
                  isRequired: true,
                  title: "Email",
                  hintText: "youremail@macca.com",
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: CustomTextField(
                  prefixIcon: SvgPicture.asset("assets/icons/key.svg"),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(
                      "assets/icons/eye-visible.svg",
                      width: 30,
                    ),
                  ),
                  isRequired: true,
                  title: "Password",
                  hintText: "xxxxxxxxx",
                  obsecureText: true,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: CustomTextField(
                  prefixIcon: SvgPicture.asset("assets/icons/key.svg"),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(
                      "assets/icons/eye-visible.svg",
                      width: 30,
                    ),
                  ),
                  isRequired: true,
                  title: "Confirm Password",
                  hintText: "xxxxxxxxx",
                  obsecureText: true,
                ),
              ),
              const SizedBox(height: 15),
              CustomElevatedButton(
                  label: "SignUp",
                  icon: SvgPicture.asset(
                    "assets/icons/clipboard.svg",
                    width: 30,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  onPressed: () => 1),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'Already have account? ',
                  style: AppTextStyle.getAppTextStyle(weight: FontWeight.bold),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigate to the sign-up screen here
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                      text: 'Login',
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ]),
          ),
        ),
      ),
    );
  }
}
