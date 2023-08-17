import '../../const.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: AppColors.secondBackgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
            ),
            child: Image.asset(
              'assets/fone.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            width: 35,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'New Product',

                    /// TODO:
                    style: TextStyle(
                      color: AppColors.primaryBackgroundColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'AirPods Max',
                style: TextStyle(
                  color: AppColors.primaryBackgroundColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 14,
                    right: 14,
                    top: 4,
                    bottom: 4,
                  ),
                  child: InkWell(
                    child: const Text(
                      'Buy Now!',
                      style: TextStyle(
                        color: AppColors.primaryBackgroundColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      // const SnackBar(
                      //   content: Text('Yay! A SnackBar!'),
                      // );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
