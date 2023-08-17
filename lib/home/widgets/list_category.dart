import '../../const.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CardCategory(
          title: 'All Product',
          colorContainer: AppColors.primaryColor,
          colorTitle: AppColors.primaryBackgroundColor,
          colorBorder: const Color(0xFFFFFFFF),
        ),
        const SizedBox(
          width: 20,
        ),
        const CardCategory(
          title: 'Recommendad',
          colorContainer: AppColors.primaryBackgroundColor,
          colorTitle: Colors.grey,
          colorBorder: Color(0xFF757575),
        ),
        const SizedBox(
          width: 20,
        ),
        const CardCategory(
          title: 'New Product',
          colorContainer: AppColors.primaryBackgroundColor,
          colorTitle: Colors.grey,
          colorBorder: Color(0xFF757575),
        ),
        const SizedBox(
          width: 20,
        ),
        // const CardCategory(
        //   title: 'New Product',
        //   colorContainer: AppColors.primaryBackgroundColor,
        //   colorTitle: Colors.grey,
        //   colorBorder: Color(0xFF757575),
        // ),
        // const SizedBox(
        //   width: 20,
        // ),
      ],
    );
  }
}
