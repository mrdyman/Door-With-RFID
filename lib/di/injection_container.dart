import 'package:door_with_rfid/features/home/presentation/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

import '../features/history/presentation/bloc/history_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // blocs
  // register DashboardBloc
  sl.registerSingleton<HomeBloc>(HomeBloc()..add(const HomeEvent.started()));
  sl.registerSingleton<HistoryBloc>(
      HistoryBloc()..add(const HistoryEvent.started()));

  // register sharefprefs
  // sl.registerSingletonAsync<SharedPreferences>(() async {
  //   final sharedPreferences = await SharedPreferences.getInstance();
  //   return sharedPreferences;
  // });

  // sl.registerSingleton<AppRouter>(AppRouter());
}
