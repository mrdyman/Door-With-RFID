import 'package:auto_route/auto_route.dart';
import 'package:door_with_rfid/common/app_fonts.dart';
import 'package:door_with_rfid/components/custom_elevated_button.dart';
import 'package:door_with_rfid/components/custom_textfield.dart';
import 'package:door_with_rfid/features/registration/presentation/bloc/registration_bloc.dart';
import 'package:door_with_rfid/features/registration/presentation/widgets/registering_dialog.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
// class RegistrationScreen extends StatelessWidget {
//   const RegistrationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<RegistrationBloc>(
//       create: (context) => RegistrationBloc(),
//       child: const RegistrationScreenView(),
//     );
//   }
// }

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegistrationBloc bloc = BlocProvider.of<RegistrationBloc>(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              BlocListener<RegistrationBloc, RegistrationState>(
                listener: (contexts, state) {
                  state.maybeWhen(
                      // registerSuccessfully: () {
                      //   Navigator.pop(contexts);
                      //   showDialog(
                      //       barrierDismissible: false,
                      //       context: contexts,
                      //       builder: (contexts) =>
                      //           const RegistrationSuccessDialog());
                      // },
                      registering: () => showDialog(
                          barrierDismissible: false,
                          context: contexts,
                          builder: (contexts) => RegisteringDialog(
                                bloc: bloc,
                              )),
                      orElse: () => null);
                },
                child: const SizedBox(height: 20),
              ),
              SvgPicture.asset(
                "assets/illustrations/form.svg",
                width: 100,
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Create New',
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
                child: BlocBuilder<RegistrationBloc, RegistrationState>(
                  builder: (context, state) {
                    return CustomTextField(
                      errorText: bloc.fullNameError,
                      controller: bloc.fullNameTEC,
                      prefixIcon: SvgPicture.asset("assets/icons/user.svg"),
                      isRequired: true,
                      title: "Full Name",
                      hintText: "ex. Vladimir Putin",
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: BlocBuilder<RegistrationBloc, RegistrationState>(
                  builder: (context, state) {
                    return CustomTextField(
                      controller: bloc.positionTEC,
                      errorText: bloc.positionError,
                      prefixIcon: SvgPicture.asset("assets/icons/user.svg"),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SvgPicture.asset(
                          "assets/icons/eye-visible.svg",
                          width: 30,
                        ),
                      ),
                      isRequired: true,
                      title: "Position",
                      hintText: "Manager",
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: SizedBox(
                      height: 40,
                      width: 110,
                      child: CustomElevatedButton(
                          label: "Create",
                          icon: SvgPicture.asset(
                            "assets/icons/submit.svg",
                            width: 30,
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                          ),
                          onPressed: () =>
                              bloc.add(const RegistrationEvent.create())),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
            ]),
          ),
        ),
      ),
    );
  }
}
