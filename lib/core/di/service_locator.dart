import 'package:clot/core/blocs/auth/auth_bloc.dart';
import 'package:clot/core/cubits/theme/theme_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupLocator() async {
  getIt.registerLazySingleton<ThemeCubit>(() => ThemeCubit());
  getIt.registerLazySingleton<AuthBloc>(() => AuthBloc());
}
