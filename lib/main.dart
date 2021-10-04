import 'package:flutter/material.dart';
import 'package:untitled1/web_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage()
    );
  }
}




class HomePage extends StatelessWidget {
  void _handleURLButtonPress(BuildContext context, String url, String title) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewPage(url, title)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebView Flutter Example"),
      ),
      body: Center(
          child: Column(
            children: [
              MaterialButton(
                color: Colors.blue,
                child:const Text(
                  "Open pub.dev",
                  style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  _handleURLButtonPress(
                      context, "https://pub.dev", "pub.dev");
                },
              ),
              MaterialButton(
                color: Colors.blue,
                child:const Text(
                  "Open Medium.com",
                  style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  _handleURLButtonPress(
                      context, "https://medium.com", "Medium.com");
                },
              ),
            ],
          )),
    );
  }
}