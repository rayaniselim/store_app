import '../../../utils/const.dart';

/* Mudanca de estado (cor) dos componentes dos botoes de categoria especies 
abaixo da app bar
*/
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
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: selectedItem == true
              ? AppColors.primaryColor
              : AppColors.primaryBackgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 0.2,
            color: selectedItem == true
                ? AppColors.primaryColor!
                : const Color(0xFF757575),
          ),
        ),
        child: Row(
          children: [
            /// IMAGE PRODUCT
            Text(
              category.nameProduct,
              style: TextStyle(
                color: selectedItem == true
                    ? AppColors.primaryBackgroundColor
                    : Colors.grey,
                letterSpacing: -0.8,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              category.priceProduct,
              style: TextStyle(
                color: selectedItem == true
                    ? AppColors.primaryBackgroundColor
                    : Colors.grey,
                letterSpacing: -0.8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
