import 'package:flutter/material.dart';
import 'package:store_app/home/widgets/app_bar.dart';
import 'package:store_app/home/widgets/card_product.dart';
import 'package:store_app/home/widgets/card_product_special.dart';
import 'package:store_app/home/widgets/list_category.dart';
import 'package:store_app/home/widgets/product_settings.dart';

import 'widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppBarWidget(),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(90),
              ),
            ),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Header(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 10,
                  ),
                  child: ProductSettings(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: ListCategory(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 35,
                  ),
                  child: CardProduct(),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.white,
                  )
                ],
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(90),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Special for you',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'See All',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CardProdutcSpecial(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
