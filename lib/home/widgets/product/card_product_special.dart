import '../../../core/utils/const.dart';

class CardProdutcSpecial extends StatelessWidget {
  const CardProdutcSpecial({super.key});

  @override
  Widget build(BuildContext context) {
    const width = SizedBox(width: 20);
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          width,

          /// TODO: TROCAR
          Image.asset('assets/mouse.png'),
          width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                /// TODO: TROCAR
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
              ButtonAdd(
                colorContainer: AppColors.primaryBackgroundColor,
                colorIcon: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
