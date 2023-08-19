import '../utils/const.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Icons.trending_flat_outlined,
        backgroundColor: AppColors.secondBackgroundColor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: Container(
              height: 10,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.white10,
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  iconSize: 25,
                  color: Colors.white60,
                  icon: const Icon(Icons.shopping_bag_outlined),
                ),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: AppColors.secondBackgroundColor,
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(90)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
