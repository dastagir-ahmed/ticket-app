import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double width;

  const AppLayoutBuilderWidget(
      {super.key, required this.randomDivider, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //direction: Axis.horizontal,
          children: List.generate(
              (constraints.constrainWidth() / randomDivider).floor(),
              (index) => SizedBox(
                    width: width,
                    height: 1,
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  )));
    });
  }
}
