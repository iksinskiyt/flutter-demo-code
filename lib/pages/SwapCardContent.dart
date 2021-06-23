import 'package:flutter/material.dart';
import '../theme/colors.dart';
class SwapCardContent extends StatefulWidget {
  const SwapCardContent({ Key? key }) : super(key: key);

  @override
  _SwapCardContentState createState() => _SwapCardContentState();
}

class _SwapCardContentState extends State<SwapCardContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  color: grey.withOpacity(0.3),
                  blurRadius: 10,
                  spreadRadius: 3
                )],
                image: DecorationImage(
                  image: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  fit: BoxFit.cover
                  ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 15,bottom: 20),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                    "Adam",
                    style: TextStyle(
                      fontSize: 48,
                      color: white,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                          blurRadius: 4,
                          color: grey.withOpacity(0.4),
                        ),
                      ]
                    ),
                  ),
                    IconButton(
                        icon: Icon(Icons.info),
                        color: primary,
                        onPressed: () {},
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in nisl nisl. Vestibulum faucibus feugiat nisi quis condimentum. Integer convallis convallis sem, eget efficitur elit mattis nec. Duis porttitor ex vitae est tincidunt egestas.",
                    style: TextStyle(
                      color: white,
                      shadows: <Shadow>[
                        Shadow(
                          blurRadius: 4,
                          color: grey.withOpacity(0.4),
                        ),
                      ]
                    ),
                  )
                ],
              ),
              )
            );
  }
}