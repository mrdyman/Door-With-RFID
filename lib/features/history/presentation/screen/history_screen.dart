import 'package:door_with_rfid/common/app_text_styles.dart';
import 'package:door_with_rfid/components/custom_textfield.dart';
import 'package:door_with_rfid/di/injection_container.dart';
import 'package:door_with_rfid/features/history/presentation/bloc/history_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: GestureDetector(
                  onTap: () {
                    bloc.dateFilterTEC.clear();
                    bloc.add(const HistoryEvent.started());
                  },
                  child: const Text(
                    "Clear",
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: CustomTextField(
              onTap: () async {
                DateTimeRange? dateTimeRange = await showDateRangePicker(
                    builder: (context, child) {
                      return Theme(
                        data: ThemeData.light().copyWith(
                          // primaryColor: blue,
                          buttonTheme: const ButtonThemeData(
                              textTheme: ButtonTextTheme.primary),
                          // colorScheme: const ColorScheme.light(
                          //   // primary: blue,
                          // ).copyWith(secondary: blue),
                        ),
                        child: child!,
                      );
                    },
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now());

                if (dateTimeRange != null) {
                  DateTime startDate = dateTimeRange.start;
                  DateTime endDate = dateTimeRange.end;
                  bloc.startDate = startDate;
                  bloc.endDate = endDate;
                  bloc.dateFilterTEC.text =
                      "${DateFormat('dd').format(startDate)}-${DateFormat('MM').format(startDate)}-${startDate.year} to ${DateFormat('dd').format(endDate)}-${DateFormat('MM').format(endDate)}-${endDate.year}";
                  bloc.add(const HistoryEvent.started());
                }
              },
              readOnly: true,
              title: "Filter..",
              suffixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.filter_alt),
              ),
              controller: bloc.dateFilterTEC,
              hintText: "-- Show all data --",
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
                        padding: const EdgeInsets.only(bottom: 35),
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
                                          bloc.histories[index].name,
                                          style: AppTextStyle.getAppTextStyle(),
                                        ),
                                        const Spacer(),
                                        Text(
                                          DateFormat('dd/MM/yyyy | HH:mm:ss')
                                              .format(bloc
                                                  .histories[index].dateTime),
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
                                              bloc.histories[index].activity,
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
