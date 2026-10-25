import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../shared/widgets/app_text_field.dart';
import '../../../../shared/widgets/auth_footer_link.dart';
import '../../../../shared/widgets/auth_header.dart';
import '../../../../shared/widgets/auth_scaffold.dart';
import '../../../../shared/widgets/primary_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirm = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _password.dispose();
    _confirm.dispose();
    super.dispose();
  }

  void _signup() {

  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      bottom: Column(
        children: [
          PrimaryButton(label: 'SignUp', onPressed: _signup),
          const SizedBox(height: 12),
          AuthFooterLink(
            text: 'Already have an account',
            linkText: 'Login',
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 60),
          const AuthHeader(
            image: AppAssets.signup,
            title: 'Get Started',
            subtitle: 'Start opening your new account',
          ),
          const SizedBox(height: 28),
          AppTextField(hint: 'Full Name', controller: _name),
          const SizedBox(height: 16),
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
          const SizedBox(height: 16),
          AppTextField(
            hint: 'Check password',
            controller: _confirm,
            obscureText: true,
          ),
        ],
      ),
    );
  }
}