import 'package:door_with_rfid/common/app_text_styles.dart';
import 'package:door_with_rfid/components/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class RegistrationSuccessDialog extends StatelessWidget {
  const RegistrationSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(16.0), // Adjust the radius as needed
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              LottieBuilder.asset(
                "assets/anims/success_anim.json",
                width: 100,
              ),
              const SizedBox(height: 20),
              Text(
                "Registration Successfully!",
                style: AppTextStyle.getAppTextStyle(
                    weight: FontWeight.bold,
                    size: 23,
                    color: Colors.greenAccent),
              ),
              const SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                "You can now open door using your card.",
                style: AppTextStyle.getAppTextStyle(
                  weight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 20),
              CustomElevatedButton(
                  backgroundColor: Colors.greenAccent,
                  label: "Ok",
                  icon: SvgPicture.asset(
                    "assets/icons/close.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  onPressed: () => Navigator.pop(context))
            ],
          ),
        ),
      ),
    );
  }
}
