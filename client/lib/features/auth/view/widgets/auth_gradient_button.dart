import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonText;
  const AuthGradientButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: .circular(7),
        gradient: const LinearGradient(
          begin: .bottomLeft,
          end: .topRight,
          colors: [
            AppColors.gradient1,
            AppColors.gradient2,
          ],
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: AppColors.transparentColor,
          shadowColor: AppColors.transparentColor,
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: .w600,
          ),
        ),
      ),
    );
  }
}
