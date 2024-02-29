import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  const AppLayoutBuilderWidget({super.key, required this.randomDivider});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //direction: Axis.horizontal,
        children: List.generate((constraints.constrainWidth()/randomDivider).floor(), (index) => const SizedBox(
          width: 3,height:1,child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
        ))
      );
    });
  }
}
