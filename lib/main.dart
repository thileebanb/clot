import 'package:clot/service_locator.dart';
import 'package:clot/src/core/blocs/auth/auth_bloc.dart';
import 'package:clot/src/core/cubits/theme/theme_cubit.dart';
import 'package:clot/src/core/theme/app_theme.dart';
import 'package:clot/src/core/theme/text_theme.dart';
import 'package:clot/src/features/auth/auth.dart';
import 'package:clot/src/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<ThemeCubit>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    context.read<AuthBloc>().add(Authenticated());
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme(createTextTheme('Lato'));

    return BlocSelector<ThemeCubit, ThemeState, ThemeMode>(
      selector: (state) => state is Light ? ThemeMode.light : ThemeMode.dark,
      builder: (context, themeMode) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'E-Commerce App',
          theme: theme(themeMode),
          home: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return switch (state) {
                Initial() => SplashPage(),
                Success() => HomePage(),
                Failure() => SignInPage(),
              };
            },
          ),
        );
      },
    );
  }
}
