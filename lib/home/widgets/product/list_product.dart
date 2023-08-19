import '../../../utils/const.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({super.key});

  @override
  Widget build(BuildContext context) {
// rx = reativo, valor dinamico q altera o estado da tela
    final rxSelected = ValueNotifier<int>(0); // TODO: ASP

    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productListData.length,
        itemBuilder: (context, indexAtual) {
          return Padding(
            padding: EdgeInsets.only(
              left: indexAtual == 0 ? 0 : 10,
              right: 10,
            ),
            child: Row(
              children: [
// Builder repsonsavel por alterar o estado da tela
                ValueListenableBuilder(
                  valueListenable: rxSelected,
                  builder: (context, value, _) {
// Componentes da categoria especies abaixo da app bar
                    return ProductComponent(
                      category: productListData[indexAtual],
                      selectedItem: rxSelected.value == indexAtual,
                      onTap: () => rxSelected.value = indexAtual,
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
