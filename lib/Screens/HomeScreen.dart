import 'package:flutter/material.dart';
import './HomePage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  'UpNotes',
                  style: TextStyle(
                    fontSize: 64,
                    color: Color(0xFF2297D2),
                  ),
                )
              ],
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 30, 63, 172),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 242, 246, 248),
                        fontWeight: FontWeight.normal,
                      ),
                    ))
              ],
            )
          ],
        ));
  }
}
