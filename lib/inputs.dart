import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

TextEditingController _controller = TextEditingController();
String value = _controller.text;

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Fetch!"),
          leading: IconButton(
            icon: Icon(Icons.pets_sharp),
            onPressed: () {
              print('clicked diamond');
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Enter your favorite color',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  print('clicked on center image');
                },
                child: Center(
                  child: SvgPicture.asset(
                    'images/305536.svg',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 40),
              child: Center(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  print(value);
                },
                child: Text('Go fetch!'),
              )),
            ),
          ],
        ),
      ),
    ),
  );
}

/* InkWell(
          onTap: () {
            print('clicked on center image');
          },
          child: Center(
            child: SvgPicture.asset(
              'images/305536.svg',
              width: 200,
              height: 200,
            ),
          ),
        ), */
