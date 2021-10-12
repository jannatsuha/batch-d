import 'package:batch_d/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AmarApp());
}
String btnText1="Tap Button";
Color btnColor1=Colors.greenAccent;
bool img1Visibility=false;

class AmarApp extends StatelessWidget {
  const AmarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Suha"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              ElevatedButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute
                      (builder: (context)=>SecondPage()));

                  },
                  child: Text("Go To Second page")
              ),

              SizedBox(
                height: 15,
              ),
              RaisedButton(
                color: btnColor1,
                child: Text(btnText1,style: TextStyle(
                  color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                ),),
                  onPressed:(){
                  setState(() {
                    btnText1="Button Pressed";
                    btnColor1=Colors.black12;
                    img1Visibility=true;
                  });
              }),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: img1Visibility,
                child: Image.network(
                    "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg"
                ),
              ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      height: 200,
                      width: 150,
                      child: Image.asset("assets/images/img2.jpg")
                  ),
                  Container(
                      height: 200,
                      width: 150,
                      child: Image.asset("assets/images/img2.jpg")
                  ),Container(
                      height: 200,
                      width: 150,
                      child: Image.asset("assets/images/img2.jpg")
                  ),
                  Container(
                      height: 200,
                      width: 150,
                      child: Image.asset("assets/images/img2.jpg")
                  ),
                  Container(
                      height: 200,
                      width: 150,
                      child: Image.asset("assets/images/img2.jpg")
                  ),
                ],
              ),
            ),
            ],
          ),
        ),
      )
    );
  }
}

