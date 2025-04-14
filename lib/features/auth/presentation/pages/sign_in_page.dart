import 'package:clot/core/extensions/build_context_extension.dart';
import 'package:clot/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();

  static MaterialPageRoute route() {
    return MaterialPageRoute(builder: (_) => SignInPage());
  }
}

class _SignInPageState extends State<SignInPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign in',
                style: context.textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 32),

              AppTextField(
                label: 'Email Address',
                onChanged: (_) {},
                controller: controller,
              ),
              SizedBox(height: 16),

              AppElevatedButton(onPressed: () {}, title: 'Continue'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
