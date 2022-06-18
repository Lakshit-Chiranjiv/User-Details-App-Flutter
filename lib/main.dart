import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Basics',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User Details App",
          style: TextStyle(
            fontFamily: 'Dongle',
            fontSize: 32.0,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey[600],
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/self.jpg'),
                  radius: 50.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "NAME",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  letterSpacing: 2.5,
                  decoration: TextDecoration.underline,
                  fontFamily: 'Dongle',
                ),
              ),
              Text(
                "Lakshit Chiranjiv Sagar",
                style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.white,
                  fontFamily: 'Dongle',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "ROLE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  letterSpacing: 2.5,
                  decoration: TextDecoration.underline,
                  fontFamily: 'Dongle',
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Full Stack Web Developer\nApp Developer\nUI/UX Designer\nBlockchain Developer",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontFamily: 'Dongle',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.black,
                    size: 24.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "lcsagar19@gmail.com",
                    style: TextStyle(
                      fontSize: 26.0,
                      color: Colors.white,
                      fontFamily: 'Dongle',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                    label: Text('GITHUB'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10.0)),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text('FOLLOW'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10.0)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
