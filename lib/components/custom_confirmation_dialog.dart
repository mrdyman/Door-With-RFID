import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import 'custom_elevated_button_icon.dart';

/// Dialog Type :
/// 1 => Warning
/// 2 => Error
class CustomConfirmationDialog extends StatelessWidget {
  final int dialogType;
  final String confirmMessage;
  final String confirmTitle;
  final String message;
  final Function() onConfirm;
  final bool isPositiveConfirmation;
  final String? customCloseText;
  const CustomConfirmationDialog({
    required this.dialogType,
    required this.confirmMessage,
    required this.confirmTitle,
    required this.message,
    required this.onConfirm,
    this.isPositiveConfirmation = false,
    this.customCloseText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              dialogType == 1
                  ? LottieBuilder.asset("assets/anims/warning_anim.json",
                      height: 150)
                  : LottieBuilder.asset("assets/anims/error_anim.json",
                      height: 150),
            ]),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  confirmMessage,
                  style: const TextStyle(
                    fontFamily: "fontNunito",
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    message,
                    style: const TextStyle(
                        fontFamily: "fontNunito",
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomElevatedButtonIcon(
                    label: confirmTitle,
                    icon: isPositiveConfirmation
                        ? SvgPicture.asset(
                            "assets/icons/correct.svg",
                            height: 25,
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                          )
                        : SvgPicture.asset(
                            "assets/icons/warning.svg",
                            height: 25,
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                          ),
                    backgroundColor:
                        isPositiveConfirmation ? Colors.green : Colors.red,
                    onPressed: () {
                      Navigator.pop(context);
                      onConfirm();
                    },
                  ),
                ),
                SizedBox(width: size.width * 0.02),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomElevatedButtonIcon(
                    label: customCloseText ?? "Close",
                    icon: SvgPicture.asset(
                      "assets/icons/close.svg",
                      height: 25,
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                    backgroundColor: Colors.blue,
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
