import 'package:flutter/material.dart';
import 'package:flutter_template/styles/theme_dimens.dart';

class ProductRowItem extends StatelessWidget {
  final String title;
  final VoidCallback onClicked;

  const ProductRowItem({
    @required this.title,
    this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClicked,
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(
          horizontal: ThemeDimens.padding16,
          vertical: ThemeDimens.padding8,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}
