import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../shared/widgets/app_text_field.dart';
import '../../../../shared/widgets/auth_footer_link.dart';
import '../../../../shared/widgets/auth_header.dart';
import '../../../../shared/widgets/auth_scaffold.dart';
import '../../../../shared/widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  void _login() {
  
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      bottom: Column(
        children: [
          PrimaryButton(label: 'Login', onPressed: _login),
          const SizedBox(height: 12),
          AuthFooterLink(
            text: "Don't have an account?",
            linkText: 'SignUp',
            onTap: () => Navigator.pushNamed(context, AppRoutes.signup),
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 60),
          const AuthHeader(
            image: AppAssets.login,
            title: 'Welcome Back',
            subtitle: 'Signin to access your account',
          ),
          const SizedBox(height: 28),
          AppTextField(
            hint: 'Email',
            controller: _email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          AppTextField(
            hint: 'Password',
            controller: _password,
            obscureText: true,
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.forgotPassword),
              child: Text(
                'Forgot password',
                style: AppTextStyles.link.copyWith(fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}