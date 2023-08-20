import '../../../core/utils/const.dart';

class ProductComponent extends StatelessWidget {
  final ProductModel category;
  final bool selectedItem;
  final VoidCallback onTap;

  const ProductComponent({
    Key? key,
    required this.category,
    required this.selectedItem,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final button = ButtonAdd(
      colorContainer: AppColors.secondBackgroundColor,
      colorIcon: AppColors.primaryBackgroundColor,
    );

    const height = SizedBox(
      height: 8,
    );
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 200,
        width: 185,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      category.image,
                      height: 120,
                    ),
                  ),
                  height,
                  Text(
                    category.nameProduct,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  height,
                  Text(
                    category.priceProduct,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    button,
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
