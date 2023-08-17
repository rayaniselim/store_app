import 'package:flutter/material.dart';

import '../../design_system/app_colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final container = Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(2),
      ),
    );
    const width = SizedBox(width: 4);
    return AppBar(
      backgroundColor: AppColors.primaryBackgroundColor,
      elevation: 0,
      title: Column(
        children: [
          Row(
            children: [
              container,
              width,
              Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              container,
              width,
              container,
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: AppColors.secondBackgroundColor,
            size: 40,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 7,
            bottom: 7,
          ),
          child: Container(
            height: 10,
            width: 38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: FittedBox(
              child: Image.network(
                'https://s1.1zoom.me/big0/459/Black_background_Hands_Makeup_Brunette_girl_Glance_577024_819x1024.jpg',
                fit: BoxFit.cover,
                height: 30,
                width: 40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
