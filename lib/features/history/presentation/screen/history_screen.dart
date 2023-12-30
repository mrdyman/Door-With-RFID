import 'package:door_with_rfid/common/app_text_styles.dart';
import 'package:door_with_rfid/components/custom_textfield.dart';
import 'package:door_with_rfid/di/injection_container.dart';
import 'package:door_with_rfid/features/history/presentation/bloc/history_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HistoryBloc bloc = sl.get<HistoryBloc>();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(18),
                child: Text(
                  "History",
                  style: AppTextStyle.getAppTextStyle(
                      size: 24, weight: FontWeight.bold),
                ),
              ),
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Expanded(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             RichText(
          //               text: TextSpan(
          //                 text: 'History, ',
          //                 style: AppTextStyle.getAppTextStyle(
          //                     size: 24, weight: FontWeight.bold),
          //                 children: const [
          //                   TextSpan(
          //                     text: 'Door',
          //                     style: TextStyle(
          //                       fontSize: 24,
          //                       color: AppColors.baseColor,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: CustomTextField(
              title: "Filter..",
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.filter_alt),
              ),
              hintText: "21 - Desember - 2023",
            ),
          ),
          const SizedBox(height: 10),
          BlocBuilder<HistoryBloc, HistoryState>(
            bloc: bloc,
            builder: (context, state) {
              return Expanded(
                child: bloc.histories.isEmpty
                    ? const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(child: Text("No Data")),
                        ],
                      )
                    : ListView.builder(
                        itemCount: bloc.histories.length,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
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
                                          bloc.histories[index].uuid,
                                          style: AppTextStyle.getAppTextStyle(),
                                        ),
                                        const Spacer(),
                                        Text(
                                          bloc.histories[index].dateTime
                                              .toString(),
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
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5,
                                                right: 5,
                                                top: 2,
                                                bottom: 2),
                                            child: Text(
                                              bloc.histories[index].position,
                                              style:
                                                  AppTextStyle.getAppTextStyle(
                                                      color: Colors.white,
                                                      weight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.greenAccent,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5,
                                                right: 5,
                                                top: 2,
                                                bottom: 2),
                                            child: Text(
                                              'Open Door',
                                              style:
                                                  AppTextStyle.getAppTextStyle(
                                                      color: Colors.white,
                                                      weight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        })),
              );
            },
          ),
        ],
      )),
    );
  }
}
