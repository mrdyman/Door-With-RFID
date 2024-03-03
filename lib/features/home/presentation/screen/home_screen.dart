import 'package:door_with_rfid/common/app_colors.dart';
import 'package:door_with_rfid/common/app_text_styles.dart';
import 'package:door_with_rfid/components/custom_confirmation_dialog.dart';
import 'package:door_with_rfid/components/custom_textfield.dart';
import 'package:door_with_rfid/di/injection_container.dart';
import 'package:door_with_rfid/features/home/presentation/bloc/home_bloc.dart';
import 'package:door_with_rfid/features/home/presentation/widgets/door_force_open_dialog.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../components/custom_icon_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreenView();
  }
}

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBloc bloc = sl.get<HomeBloc>();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Hello, ',
                                style: AppTextStyle.getAppTextStyle(
                                    size: 24, weight: FontWeight.bold),
                                children: const [
                                  TextSpan(
                                    text: 'Admin',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: AppColors.baseColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                                DateFormat("MMMM, dd yyyy | HH:mm")
                                    .format(DateTime.now()),
                                style: AppTextStyle.getAppTextStyle()),
                          ],
                        ),
                      )),
                ),
                // const SizedBox(width: 15),
                // Container(
                //     decoration: BoxDecoration(
                //         color: Colors.white,
                //         borderRadius: BorderRadius.circular(10)),
                //     child: const Padding(
                //       padding: EdgeInsets.all(8.0),
                //       child: Icon(
                //         Icons.notifications,
                //         color: AppColors.baseColor,
                //       ),
                //     )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: BlocListener<HomeBloc, HomeState>(
              bloc: bloc,
              listener: (context, state) {
                state.maybeWhen(
                    doorForcedOpen: () => showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) => const DoorForceOpenDialog()),
                    orElse: () => null);
              },
              child: CustomTextField(
                title: "Search..",
                prefixIcon: const Icon(Icons.search),
                hintText: "Ex. Vladimir Putin ..",
                controller: bloc.searchTEC,
                onChanged: (value) =>
                    bloc.add(HomeEvent.search(keyword: value)),
              ),
            ),
          ),
          const SizedBox(height: 10),
          BlocBuilder<HomeBloc, HomeState>(
            bloc: bloc,
            builder: (context, state) {
              return bloc.users.isEmpty
                  ? const Text("No Data")
                  : Expanded(
                      child: ListView.builder(
                          itemCount: bloc.users.length,
                          itemBuilder: ((context, index) {
                            return _buildRfids(
                              name: bloc.users[index].name,
                              position: bloc.users[index].position,
                              onDelete: () => showDialog(
                                  context: context,
                                  builder: (context) =>
                                      CustomConfirmationDialog(
                                          dialogType: 1,
                                          confirmMessage: "Are you sure?",
                                          confirmTitle: "Yes, Delete",
                                          message: "data will be deleted",
                                          onConfirm: () => bloc.add(
                                              HomeEvent.deleteUser(
                                                  id: bloc.users[index].id!)))),
                            );
                          })),
                    );
            },
          ),
          const SizedBox(height: 35),
        ],
      )),
    );
  }

  Widget _buildRfids(
      {required String name,
      required String position,
      required Function onDelete}) {
    return Slidable(
      key: key,
      endActionPane: ActionPane(
        motion: const BehindMotion(),
        extentRatio: 0.25,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CustomIconButton(
              onTap: () => onDelete(),
              color: Colors.red,
              icon: SvgPicture.asset(
                "assets/icons/delete.svg",
                height: 25,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.verified_user),
                    const SizedBox(width: 10),
                    Text(
                      name,
                      style: AppTextStyle.getAppTextStyle(),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.work),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 5, top: 2, bottom: 2),
                        child: Text(
                          position,
                          style: AppTextStyle.getAppTextStyle(
                              color: Colors.white, weight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
