import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  final String title;
  final Color? colorContainer;
  final Color? colorTitle;
  final Color colorBorder;

  const CardCategory({
    super.key,
    required this.title,
    required this.colorContainer,
    required this.colorTitle,
    required this.colorBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorContainer,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 0.2,
          color: colorBorder,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
              color: colorTitle,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
