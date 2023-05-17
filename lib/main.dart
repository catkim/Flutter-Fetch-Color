import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
    MaterialApp(
      home: BasicPage(),
    ),
  );
}

class BasicPage extends StatefulWidget {
  const BasicPage({Key? key}) : super(key: key);
  @override
  State<BasicPage> createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  Color bgColor = Colors.pink;
  TextEditingController controller = TextEditingController();
  String value = '';
  void setColor(textPassed) {
    setState(() {
      switch (textPassed) {
        case 'green':
          bgColor = Colors.green;
          break;
        case 'orange':
          bgColor = Colors.orange;
          break;
        case 'red':
          bgColor = Colors.red;
          break;
        case 'blue':
          bgColor = Colors.blue;
          break;
        case 'yellow':
          bgColor = Colors.yellow;
          break;
        case 'brown':
          bgColor = Colors.brown.shade300;
          break;
        case 'purple':
          bgColor = Colors.purple;
          break;
        case 'pink':
          bgColor = Colors.pink;
          break;
        default:
          bgColor = Colors.white;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Fetch! 123"),
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
                    controller: controller,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter your favorite color',
                    ),
                    onChanged: (text) {
                      setState(() {
                        value = text;
                      });
                    },
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
                print(value + " fff");
                setColor(value);
              },
              child: Text('Fetch your color'),
            )),
          ),
        ],
      ),
    );
  }
}
