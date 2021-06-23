import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'ExplorePage.dart';
 
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


  
   
class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(preferredSize: Size.fromHeight(60), child: getAppBar()),
       body: getBody()
    );
  }

  Widget getAppBar(){
      var items = [
      pageIndex == 0 ? Icon(Icons.home,color:secondary) : Icon(Icons.home,color:grey),
      pageIndex == 1 ? Icon(Icons.messenger,color: secondary) : Icon(Icons.messenger,color: grey),
      pageIndex == 2 ? Icon(Icons.person,color:secondary) : Icon(Icons.person,color:grey)
  ];
    return AppBar(
         backgroundColor: white,
         elevation: 0,
         title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: List.generate(items.length, (index) {
            return IconButton(onPressed: () {
              setState(() {
                pageIndex = index;
              });
            }, icon: items[index]);
           }),
           )
       );
  }
  Widget getBody(){
    return IndexedStack(
         index: pageIndex,
         children: [
           ExplorePage(),
           ExplorePage(),
           ExplorePage(),
         ],
       );
  }
}