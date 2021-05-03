import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
  final subtitleStyle = TextStyle(
    fontSize: 10.0,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _createImage(),
            _createTitle(),
            _createActions(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
          "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png",
        ),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 20.0,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lago Paisaje",
                    style: titleStyle,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    "Bonito paisaje ubicado en alguna parte del mundo.",
                    style: subtitleStyle,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              "41",
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _createActionItem(Icons.call, "Call"),
        _createActionItem(Icons.near_me, "Route"),
        _createActionItem(Icons.share, "Share"),
      ],
    );
  }

  Widget _createActionItem(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  Widget _createDescription() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        child: Text(
          "Sit quis eiusmod pariatur voluptate labore sint minim occaecat nostrud in quis consectetur ea reprehenderit. Deserunt tempor sunt consequat eiusmod enim. Magna officia cupidatat eu dolore duis sit. Commodo nostrud velit adipisicing ut cillum adipisicing. Elit laborum enim excepteur eu eiusmod laboris proident consequat do incididunt tempor.",
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
