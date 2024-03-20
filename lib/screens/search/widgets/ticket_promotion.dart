import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            width: size.width*.42,
            height: 435,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 2
                  )
                ]
            ),
            child: Column(
              children: [
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          fit:BoxFit.cover,
                          image: AssetImage(

                              AppMedia.planeSit
                          )
                      )
                  ),
                ),
                const SizedBox(height: 12,),
                Text(
                  "20% discount on the early booking of this flight. Don't miss",
                  style: AppStyles.headLineStyle2,
                )
              ],
            )
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: size.width*.44,
                  height: 210,
                  decoration: BoxDecoration(
                      color: const Color(0xFF3AB8B8),
                      borderRadius: BorderRadius.circular(18)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor survey",
                        style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "Take the survey about our services and get discount",
                        style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top:-40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(

                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: AppStyles.circleColor
                        )
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: size.width*0.44,
              height: 210,
              decoration: BoxDecoration(
                  color: const Color(0xFFEC6545),
                  borderRadius: BorderRadius.circular(18)
              ),
              child: Column(
                children: [
                  Text(
                    "Take Love",
                    style: AppStyles.headLineStyle2.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                              text:'😍', style: TextStyle(fontSize: 38)
                          ),
                          TextSpan(
                              text:'🥰', style: TextStyle(fontSize: 50)
                          ),
                          TextSpan(
                              text:'😘', style: TextStyle(fontSize: 38)
                          ),
                        ]
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
