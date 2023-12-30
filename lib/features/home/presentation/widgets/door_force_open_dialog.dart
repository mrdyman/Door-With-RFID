import 'package:door_with_rfid/common/app_text_styles.dart';
import 'package:door_with_rfid/components/custom_elevated_button.dart';
import 'package:door_with_rfid/di/injection_container.dart';
import 'package:door_with_rfid/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class DoorForceOpenDialog extends StatelessWidget {
  const DoorForceOpenDialog({super.key});

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
              LottieBuilder.asset(
                "assets/anims/warning_anim.json",
                width: 200,
              ),
              Text(
                "Door Forced Open!",
                style: AppTextStyle.getAppTextStyle(
                    weight: FontWeight.bold, size: 26, color: Colors.red),
              ),
              const SizedBox(height: 10),
              Text(
                "Attention, We have detected that the door has been forcibly opened.\nPlease take immediate action to secure your premises and contact the relevant authorities if necessary.",
                style: AppTextStyle.getAppTextStyle(
                  weight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 10),
              CustomElevatedButton(
                  backgroundColor: Colors.redAccent,
                  label: "Close",
                  icon: SvgPicture.asset(
                    "assets/icons/key.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  onPressed: () {
                    sl
                        .get<HomeBloc>()
                        .add(const HomeEvent.dismissForceOpenDoor());
                    Navigator.pop(context);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
