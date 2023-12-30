import 'package:door_with_rfid/common/app_text_styles.dart';
import 'package:door_with_rfid/components/custom_elevated_button.dart';
import 'package:door_with_rfid/features/registration/presentation/bloc/registration_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class RegisteringDialog extends StatelessWidget {
  final RegistrationBloc bloc;
  const RegisteringDialog({required this.bloc, super.key});

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
          child: BlocBuilder<RegistrationBloc, RegistrationState>(
            bloc: bloc,
            builder: (context, state) {
              return state.maybeWhen(
                registerSuccessfully: () => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    LottieBuilder.asset(
                      "assets/anims/success_anim.json",
                      width: 100,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Registration Success!",
                      style: AppTextStyle.getAppTextStyle(
                          weight: FontWeight.bold, size: 23, color: Colors.red),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.center,
                      "You can now open the door using your card.",
                      style: AppTextStyle.getAppTextStyle(
                        weight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomElevatedButton(
                        backgroundColor: Colors.greenAccent,
                        label: "OK",
                        icon: SvgPicture.asset(
                          "assets/icons/submit.svg",
                          width: 20,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                        onPressed: () => Navigator.pop(context))
                  ],
                ),
                orElse: () => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    LottieBuilder.asset(
                      "assets/anims/scan-card_anim.json",
                      width: 100,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Scan your card!",
                      style: AppTextStyle.getAppTextStyle(
                          weight: FontWeight.bold, size: 26, color: Colors.red),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.center,
                      "Please scan your card to finish registration process.",
                      style: AppTextStyle.getAppTextStyle(
                        weight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomElevatedButton(
                        backgroundColor: Colors.redAccent,
                        label: "Cancel Registration",
                        icon: SvgPicture.asset(
                          "assets/icons/close.svg",
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                        onPressed: () => Navigator.pop(context))
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
