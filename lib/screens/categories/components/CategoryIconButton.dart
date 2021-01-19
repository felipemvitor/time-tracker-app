import 'package:flutter/material.dart';

import '../../../components/text/Label.dart';
import '../../../styles/Dimensions.dart';
import '../../../styles/ProjectColors.dart';

class CategoryIconButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;

  CategoryIconButton(this.label, this.icon, this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(label),
        Container(
          margin: Dimensions.margin.componentWithLabel,
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(
                width: Dimensions.width.border,
                color: ProjectColors.white1,
              ),
              borderRadius: Dimensions.borderRadius.textField,
              color: ProjectColors.black1,
            ),
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: Dimensions.padding.categoryIcon,
                child: Icon(icon,
                    color: ProjectColors.white2,
                    size: Dimensions.iconSize.button),
              ),
            ),
          ),
        )
      ],
    );
  }
}
