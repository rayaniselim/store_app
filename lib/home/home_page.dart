import '../core/utils/const.dart';
import 'widgets/product/list_product.dart';

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
      backgroundColor: AppColors.secondBackgroundColor,
      body: CustomScrollView(
        slivers: [
          // const Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          const AppBarWidget(),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.primaryBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                ),
              ),
              child: const Column(
                children: [
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
                    child: ListProduct(),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: AppColors.primaryBackgroundColor,
                    )
                  ],
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: AppColors.secondBackgroundColor,
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
                          children: [
                            const Text(
                              'Special for you',
                              style: TextStyle(
                                color: AppColors.primaryBackgroundColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 120,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'See All',
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height:
                              // MediaQuery.of(context).size.height * 0.001,
                              20,
                        ),
                        const CardProdutcSpecial(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const Spacer(),
        ],
      ),
      // ],
      // ),
    );
  }
}
