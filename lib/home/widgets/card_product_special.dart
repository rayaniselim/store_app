import 'package:flutter/material.dart';
import 'package:store_app/home/widgets/bottom_add.dart';

import '../../design_system/app_colors.dart';

class CardProdutcSpecial extends StatelessWidget {
  const CardProdutcSpecial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Image.asset('assets/mouse.png'),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Magic Mouse',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[200],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                r'$ 79',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
          const Spacer(),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BottomAdd(
                colorContainer: AppColors.primaryBackgroundColor,
                colorIcon: Colors.black,
                border: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
