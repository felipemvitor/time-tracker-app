import 'package:flutter/material.dart';

import '../../../components/text/Label.dart';
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
          margin: EdgeInsets.only(top: 8.0),
          child: Ink(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: ProjectColors.white1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: ProjectColors.black1,
              ),
              child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.red),
                  ),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(icon, color: ProjectColors.white2, size: 30),
                  ))),
        )
      ],
    );
  }
}
