import '../../../core/utils/const.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final button = BottomAdd(
      colorContainer: AppColors.secondBackgroundColor,
      colorIcon: AppColors.primaryBackgroundColor,
    );

    return Row(
      children: [
        /// TODO: COMPONENTIZAR
        Container(
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
                      /// TODO: TROCAR
                      child: Image.asset(
                        'assets/ipad.png',
                        height: 120,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Ipad Air',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      r'$ 599',
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
        const SizedBox(
          width: 20,
        ),
        Container(
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
                        'assets/fone_black.png',
                        height: 120,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'AirPods Max',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      r'$ 549',
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
      ],
    );
  }
}
