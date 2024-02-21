import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good morning",
                          style: AppStyles.headLineStyle3),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Book Tickets",
                          style: AppStyles.headLineStyle1)
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius:  BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(AppMedia.logo)

                      )
                    )
                  )
                ],
              ),
              const SizedBox(height:25),
              Container(
                padding:const EdgeInsets.symmetric(horizontal:12, vertical:12),
                decoration: BoxDecoration(
                    borderRadius:  BorderRadius.circular(10),
                    color: const Color(0xFF4F6FD),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(FluentSystemIcons.ic_fluent_search_regular, color:Color(0xFFBFC205)),
                    Text("Search icon")
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
