import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/heading_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Padding(padding: EdgeInsets.only(top: 40)),
          Row(
            children: [
              //shows the logo
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(AppMedia.logo))),
              ),
              const SizedBox(
                width: 10,
              ),
              //shows the column text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeadingText(text: "Book Tickets", isColor: false),

                  Text(
                    "New-York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  const SizedBox(height: 8,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3,horizontal: 3),
                    //decoration
                    decoration: BoxDecoration(
                      color: AppStyles.profileLocationColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    //child ->row->icon,text
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration:  BoxDecoration(
                              shape: BoxShape.circle, color: AppStyles.profileTextColor),
                          child: const Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text("Premium status", style: TextStyle(
                          color: AppStyles.profileTextColor, fontWeight: FontWeight.w500,
                        ),)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
