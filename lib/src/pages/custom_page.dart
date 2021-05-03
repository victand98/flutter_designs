import 'dart:math';

import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titles(),
                _roundedButtons(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: "",
          ),
        ],
      ),
    );
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
        ),
      ),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0),
              ],
            ),
            borderRadius: BorderRadius.circular(90.0)),
      ),
    );

    return Stack(
      children: [
        gradient,
        Positioned(
          top: -100.0,
          left: -50.0,
          child: pinkBox,
        ),
      ],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Classify Transaction",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Classify this transaction into a particular category.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _roundedButtons() {
    return Table(
      children: [
        TableRow(
          children: [
            _createRoundedButton(
              Colors.blue,
              Icons.border_all,
              "General",
            ),
            _createRoundedButton(
              Colors.purpleAccent,
              Icons.directions_bus,
              "Bus",
            ),
          ],
        ),
        TableRow(
          children: [
            _createRoundedButton(
              Colors.pinkAccent,
              Icons.shop,
              "Buy",
            ),
            _createRoundedButton(
              Colors.orange,
              Icons.insert_drive_file,
              "Files",
            ),
          ],
        ),
        TableRow(
          children: [
            _createRoundedButton(
              Colors.blueAccent,
              Icons.movie_filter,
              "Entertaiment",
            ),
            _createRoundedButton(
              Colors.green,
              Icons.cloud,
              "Clouding",
            ),
          ],
        ),
        TableRow(
          children: [
            _createRoundedButton(
              Colors.red,
              Icons.collections,
              "Photos",
            ),
            _createRoundedButton(
              Colors.teal,
              Icons.help_center_outlined,
              "Help",
            ),
          ],
        ),
      ],
    );
  }

  Widget _createRoundedButton(Color color, IconData icon, String text) {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 5.0,
          ),
          CircleAvatar(
            radius: 35.0,
            backgroundColor: color,
            child: Icon(
              icon,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: color,
            ),
          ),
          SizedBox(
            height: 5.0,
          )
        ],
      ),
    );
  }
}
