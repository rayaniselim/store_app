import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Icon(
        Icons.ac_unit,
        color: Colors.pink,
        size: 30,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.grey[900],
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
