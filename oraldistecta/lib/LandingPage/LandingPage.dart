import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pagechildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Oral Disease Recognition",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Identifying dental disease oral diseases \nsuch as dental caries (Tooth decay) and periodontal disease and recommending\nsolutions through a mobile phone without consulting a medical professional.",
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 99, 171, 231),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: Text(
                  "Start",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Image.asset(
          "assets/Images/pic1.png",
          width: width,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pagechildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pagechildren(constraints.biggest.width / 2),
          );
        }
      },
    );
  }
}
