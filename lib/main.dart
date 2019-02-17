import 'package:flutter/material.dart';
import 'package:stack_view/EcommerceWidgetItem.dart';

void main() => runApp(new MyApp());

//MARK:- Statefull widgets
class MainPage extends StatefulWidget {
  final String title;

  MainPage({this.title}) : super();

  @override
  State<StatefulWidget> createState() {
    return MainPageState(); //Returning the state
  }
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Icon(Icons.map , size: 30.0,color: Colors.white,),
        backgroundColor: Colors.black,

      ),

      //Spacing Between items
      body: new GridView.extent(
          maxCrossAxisExtent: 300.0, //1/3 device width
          mainAxisSpacing: 3.0, // space by row
          crossAxisSpacing: 3.0, // space by column
          padding: EdgeInsets.all(3.0), // calling the widgets which will be drawn over
          children: _buildGridTiles(10) // number of items will be returned
          ),
    );
  }
}

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Widget> containers = new List<Widget>.generate(numberOfTiles,
          (int index) {
    //setting the image names and looping of them
    final imageName = index < 9
        ? "images/image0${index + 1}.png"
        : "images/image${index + 1}.png";

    return EcommerceWidgetItem(imageName:imageName);
  });
  return containers;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "", home: MainPage(title: "Grid of Images"));
  }
}
