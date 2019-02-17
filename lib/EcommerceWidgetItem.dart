import 'package:flutter/material.dart';


class EcommerceWidgetItem extends StatelessWidget{

  String imageName;
  EcommerceWidgetItem({@required this.imageName});

  @override
  Widget build(BuildContext context) {

    return Stack(
      //Stack items...
      children: <Widget>[
        //*********************************//
        //First Child of the Stack٫٫٫٫٫٫٫
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imageName), fit: BoxFit.fill)),
          child: Container(),
        ),

        //*********************************//
        // Second Child of the Stack٫٫٫٫٫٫ "Rating"
        Container(
          height: 30.0,
          width: 50.0,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(90.0),
                bottomRight: Radius.circular(90.0),
              )),
          child: Row(
            children: <Widget>[
              Icon(Icons.star, color: Colors.blueAccent, size: 20.0),
              Text(
                "4.0",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),

        //*********************************//
        //Third element of the stack
        Positioned(
          bottom: 0.0,
          child: SizedBox(
            width: 200.0,
            height: 40.0,
            child: Card(
                color: Colors.black26,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "pullOver",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      Text(
                        "%50.0",
                        style: TextStyle(color: Colors.yellow, fontSize: 20.0),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ],
    );
  }

}