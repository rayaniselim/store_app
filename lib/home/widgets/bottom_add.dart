import '../../core/utils/const.dart';

class BottomAdd extends StatelessWidget {
  final Color? colorIcon;
  final Color? colorContainer;
  // final BorderRadiusGeometry? border;

  const BottomAdd({
    super.key,
    required this.colorIcon,
    required this.colorContainer,
    // required this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
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
