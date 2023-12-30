import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/presentation/screen/home_screen.dart';
import '../../../registration/presentation/bloc/registration_bloc.dart';
import '../../../registration/presentation/screens/registration_page.dart';
import '../../../history/presentation/screen/history_screen.dart';

List<Widget> buildScreens() {
  return [
    const HomeScreen(),
    BlocProvider<RegistrationBloc>(
      create: (context) => RegistrationBloc(),
      child: const RegistrationScreen(),
    ),
    const HistoryScreen(),
  ];
}
