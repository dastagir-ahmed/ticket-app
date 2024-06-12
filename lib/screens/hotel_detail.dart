import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:get/get.dart';
import 'package:ticket_app/controller/text_expansion_controller.dart';
import 'package:ticket_app/provider/text_expansion_provider.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;

  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    print(args["index"]);
    index = args["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppStyles.primaryColor),
                  child: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(hotelList[index]["place"]),
              background: Stack(
                children: [
                  Positioned.fill(
                      child: Image.asset(
                    "assets/images/${hotelList[index]["image"]}",
                    fit: BoxFit.cover,
                  )),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4
                      ),
                      color: Colors.black.withOpacity(0.5),
                        child: Text(
                            hotelList[index]["place"],
                            style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  //color: Colors.red,
                                  color:AppStyles.primaryColor,
                                  offset: const Offset(2.0, 2.0)
                                )
                              ]
                          ),
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
             Padding(
              padding: EdgeInsets.all(16.0),
              child: ExpandedTextWidget(
                text:hotelList[index]["detail"]
              )

            ),
            const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "More Images",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotelList[index]["images"].length,
                  itemBuilder: (context, imagesIndex) {
                    print("${hotelList[index]["images"][0]}");
                    return Container(
                        margin: EdgeInsets.all(16),
                        color: Colors.red,
                        child: Image.asset(
                            "assets/images/${hotelList[index]["images"][imagesIndex]}"));
                  }),
            )
          ]))
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends ConsumerWidget {
  ExpandedTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var provider = ref.watch(textExpansionNotifierProvider);

    var textWidget = Text(
      text,
      maxLines: provider?null:9,
      overflow: provider?TextOverflow.visible:TextOverflow.ellipsis,
    );

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          textWidget,
          GestureDetector(
            onTap: (){
              ref.watch(textExpansionNotifierProvider.notifier).toggleText(provider);
            },
            child: Text(
              provider?'Less':'More',
              style: AppStyles.textStyle.copyWith(
                  color: AppStyles.primaryColor
              ),
            ),
          )
        ]
    );
  }
}
