import 'package:flutter/material.dart';

class BottomAdd extends StatelessWidget {
  const BottomAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(40),
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {},
        color: Colors.white,
      ),
    );
  }
}
