import 'package:flutter/material.dart';

import 'card_category.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CardCategory(
          title: 'All Product',
          colorContainer: Colors.orange[700],
          colorTitle: Colors.white,
          colorBorder: const Color(0xFFFFFFFF),
        ),
        const SizedBox(
          width: 20,
        ),
        const CardCategory(
          title: 'Recommendad',
          colorContainer: Colors.white,
          colorTitle: Colors.grey,
          colorBorder: Color(0xFF757575),
        ),
        const SizedBox(
          width: 20,
        ),
        const CardCategory(
          title: 'New Product',
          colorContainer: Colors.white,
          colorTitle: Colors.grey,
          colorBorder: Color(0xFF757575),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
