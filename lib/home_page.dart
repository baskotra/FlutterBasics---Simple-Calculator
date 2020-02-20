import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, output = 0;
  
  final TextEditingController t1 = new TextEditingController(text: "0"); //*Work As Listners
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAdd(){ //*Method for Addition
    setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    output = num1 + num2;
    });
  }
  void doSub(){ //*Method for Addition
    setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    output = num1 - num2;
    });
  }
  void doMul(){ //*Method for Addition
    setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    output = num1 * num2;
    });
  }
  void doDiv(){ //*Method for Addition
    setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    output = num1 ~/ num2;
    });
  }

  void doClear(){
    t1.text="0";
    t2.text="0";
    output = 0;
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Prakhar's Calculator"), //*Text on Top
      ),
      body: new Container(
        padding: const EdgeInsets.all(60.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center, //*To center the Text Boxes
          children: <Widget>[ //*It takes a list 
          new Text(
            "Output : $output",
            style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color:Colors.cyan),
          ),
          new TextField(
            keyboardType: TextInputType.number, //*Keyboard to be displayed
            decoration: InputDecoration(
              hintText: "Enter Number 1"
            ),
            controller: t1, //*Controller Assigned
          ),
          new TextField(
            keyboardType: TextInputType.number, //*Keyboard to be displayed
            decoration: InputDecoration(
              hintText: "Enter Number 2"
            ),
            controller: t2, 
          ),
          new Padding(
            padding: const EdgeInsets.only(top:20.0),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, //* Evenly space buttons
            children: <Widget>[
              new MaterialButton(
                child: new Text("+"),
                onPressed: doAdd,
                color: Colors.blue,
                ),
                new MaterialButton(
                child: new Text("-"),
                onPressed: doSub,
                color: Colors.pink,
                ),
                new MaterialButton(
                child: new Text("*"),
                onPressed: doMul,
                color: Colors.yellow,
                ),
                new MaterialButton(
                child: new Text("/"),
                onPressed: doDiv,
                color: Colors.green,
                )
            ],
          ),
          new Padding(
            padding: const EdgeInsets.only(top:20.0),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new MaterialButton(
                child: new Text("CLEAR!"),
                onPressed: doClear,
                color: Colors.red,
                )
            ],
          )
        ],)
      )
    );
  }
}