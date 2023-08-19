import '../../utils/const.dart';

class ProductSettings extends StatelessWidget {
  const ProductSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Our Products',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.density_medium_rounded,
              color: AppColors.primaryBackgroundColor,
            ),
          ),
        ),
      ],
    );
  }
}
