import 'package:flutter/material.dart';

class ColorContainer extends StatelessWidget {
  final Color gradient1;
  final Color gradient2;
  const ColorContainer({
    required this.gradient1,
    required this.gradient2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: 25,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              gradient1,
              gradient2,
            ],
          ),
        ),
      ),
    );
  }
}
