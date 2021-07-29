import 'package:flutter/material.dart';
import 'zoo.dart';

void main() => runApp(MaterialApp(
  home: HomeScreen(),
));


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF606c38),
        appBar: AppBar(
          title: Text('APP ZOO'),
          backgroundColor: Color(0xFF283618),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top:10)),
              Text(
                  'Now everything is easier!',
                style: TextStyle(
                    color: Color(0xFFfefae0),
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10, bottom: 20),
              child: Text(
                  'Just a "click" to clear your doubts',
                  style: TextStyle(
                    color: Color(0xFFfed9b7),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Image.asset('images/zooApp.jpg', width: 400, height: 250,),
              Padding(padding: EdgeInsets.all(10)),
              RaisedButton(
                color: Color(0xFF967e39),
                child: Text(
                    'to ZOO',
                style: TextStyle(
                  color: Colors.white,
                  ),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Zoo()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

