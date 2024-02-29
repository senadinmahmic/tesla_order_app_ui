import 'package:flutter/material.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';

class LandinViewButton extends StatelessWidget {
  final VoidCallback onPressed;
  const LandinViewButton({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(
          Size(
            screenSize.width * 0.7,
            50,
          ),
        ),
        foregroundColor: MaterialStatePropertyAll(
          AppColors.white,
        ),
        side: MaterialStatePropertyAll(
          BorderSide(
            color: AppColors.red!,
            width: 2,
          ),
        ),
      ),
      child: const Text(
        'ORDER NOW',
      ),
    );
  }
}
