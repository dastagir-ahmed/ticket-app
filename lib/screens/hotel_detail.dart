import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';

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
            Container(
              height: 200.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.all(16),
                        color: Colors.red,
                        child: Image.network(
                            "https://via.placeholder.com/200x200"));
                  }),
            )
          ]))
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends StatefulWidget {
  const ExpandedTextWidget({super.key, required this.text});
  final String text;

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  bool isExpanded=false;
  _toggleExpansion(){
    setState(() {
      isExpanded = !isExpanded;
    });
    print("The value is $isExpanded");
  }
  @override
  Widget build(BuildContext context) {

    var textWidget = Text(
      widget.text,
      maxLines: isExpanded?null:3,
      overflow: isExpanded?TextOverflow.visible:TextOverflow.ellipsis,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        textWidget,
        GestureDetector(
          onTap: (){
            _toggleExpansion();
          },
          child: Text(
            isExpanded?'Less':'More',
            style: AppStyles.textStyle.copyWith(
              color: AppStyles.primaryColor
            ),
          ),
        )
      ]
    );
  }
}
