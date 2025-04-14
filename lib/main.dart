import 'package:clot/core/blocs/auth/auth_bloc.dart';
import 'package:clot/core/cubits/theme/theme_cubit.dart';
import 'package:clot/core/di/service_locator.dart';
import 'package:clot/core/theme/app_theme.dart';
import 'package:clot/core/theme/text_theme.dart';
import 'package:clot/features/auth/auth.dart';
import 'package:clot/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();

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
              Widget page = switch (state) {
                Initial() => const SplashPage(),
                Success() => const HomePage(),
                Failure() => const SignInPage(),
              };

              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: KeyedSubtree(
                  key: ValueKey(state.runtimeType),
                  child: page,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
