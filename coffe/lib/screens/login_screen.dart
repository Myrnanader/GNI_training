
import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/primary_button.dart';
import '../widgets/screen_title.dart';
import '../widgets/social_login_row.dart';
import 'home_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  void _login() {
    if (!_formKey.currentState!.validate()) return;

    final userName = _email.text.trim().split('@').first;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => HomeScreen(userName: userName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _AuthBackground(
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(22, 70, 22, 24),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight - 94,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const ScreenTitle('Welcome to Login'),

                      const SizedBox(height: 42),

                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CustomTextField(
                              hint: 'E-mail Address',
                              controller: _email,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    !value.contains('@')) {
                                  return 'Enter a valid email address';
                                }
                                return null;
                              },
                            ),

                            const SizedBox(height: 12),

                            CustomTextField(
                              hint: 'Password',
                              controller: _password,
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.length < 6) {
                                  return 'Password must be at least 6 characters';
                                }
                                return null;
                              },
                            ),

                            const SizedBox(height: 28),

                            PrimaryButton(
                              label: 'Sign in',
                              onPressed: _login,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 42),

                      const SocialLoginRow(),

                      const SizedBox(height: 54),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const RegisterScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Don't have an account? Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _AuthBackground extends StatelessWidget {
  final Widget child;

  const _AuthBackground({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF17120E),
            Color(0xFF090909),
            Color(0xFF24170E),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -20,
            left: -20,
            right: -20,
            height: 190,
            child: Opacity(
              opacity: .22,
              child: Image.asset(
                'assets/images/bg.png',
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) {
                  return const Center(
                    child: Icon(
                      Icons.coffee,
                      size: 150,
                      color: AppColors.caramel,
                    ),
                  );
                },
              ),
            ),
          ),

          child,
        ],
      ),
    );
  }
}
