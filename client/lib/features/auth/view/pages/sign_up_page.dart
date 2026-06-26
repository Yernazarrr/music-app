import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../widgets/auth_gradient_button.dart';
import '../widgets/custom_text_form_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const .all(15),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: .center,
            children: [
              const Text(
                'Sign Up.',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: .bold,
                ),
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                controller: _nameController,
                hintText: 'Name',
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                controller: _emailController,
                hintText: 'Email',
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                controller: _passwordController,
                hintText: 'Password',
                isObscureText: true,
              ),
              const SizedBox(height: 20),
              AuthGradientButton(
                onTap: () {},
                buttonText: 'Sign Up',
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.titleMedium,
                  text: 'Already have an account? ',
                  children: const [
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                        color: AppColors.gradient2,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
