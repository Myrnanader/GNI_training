import 'package:flutter/material.dart';

import '../../../../app/routes/app_routes.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/widgets/app_screen.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/doorstep_title.dart';
import '../../../../core/widgets/spacing_widgets.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: AppScreen(
        horizontalPadding: AppDimensions.formPadding,
        bottomAction: CustomButton(
          text: AppConstants.login,
          onPressed: _login,
        ),
        child: Column(
          children: [
            const HeightSpace(220),
            const DoorstepTitle(),
            const HeightSpace(80),
            LoginForm(
              emailController: _emailController,
              passwordController: _passwordController,
            ),
          ],
        ),
      ),
    );
  }
}
