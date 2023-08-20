import '../../core/utils/const.dart';

class ButtonAdd extends StatelessWidget {
  final Color? colorIcon;
  final Color? colorContainer;

  const ButtonAdd({
    super.key,
    required this.colorIcon,
    required this.colorContainer,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.055,
      width: size.width * 0.117,
      decoration: BoxDecoration(
        color: colorContainer,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(30),
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {},
        color: colorIcon,
      ),
    );
  }
}
