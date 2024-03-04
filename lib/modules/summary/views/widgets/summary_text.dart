import 'package:flutter/material.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';

class SummaryText extends StatelessWidget {
  final String label;
  final String value;
  final Color? color;

  const SummaryText({
    required this.label,
    required this.value,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '$label: ',
        style: TextStyle(
          color: AppColors.white,
          fontSize: 14,
        ),
        children: [
          TextSpan(
            text: value,
            style: TextStyle(
              color: color,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
