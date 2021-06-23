import 'package:crosser/pages/SwapCardContent.dart';
import 'package:crosser/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({ Key? key }) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  var items = [
     IconButton(onPressed: () => {},icon: Icon(MdiIcons.skull,color: red,),),
     IconButton(onPressed: () => {},icon: Icon(MdiIcons.star,color: blue,),),
     IconButton(onPressed: () => {},icon: Icon(MdiIcons.heart,color: green,),)  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(color: white),
        child: Padding(
          padding: EdgeInsets.only(left:20,right: 20,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(3, (index) {
              return Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 10
                    )
                  ]
                ),
                child: Center(child: items[index],),
              );
            }),
            )
          )
      ),
      body: getBody(),
    );
  }

  Widget getBody(){
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(bottom:90),
      child: Container(
        height: size.height,
        child: TinderSwapCard(
          totalNum: 5,
          maxWidth: size.width,
          maxHeight: size.height * 0.80,
          minWidth: size.width * 0.75,
          minHeight: size.height * 0.6,
            cardBuilder: (context,index)=> SwapCardContent()
        )
      )
    );
  }

}

