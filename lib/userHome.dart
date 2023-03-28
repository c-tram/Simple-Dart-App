import 'package:flutter/material.dart';
import 'survey.dart';

class userHome extends StatefulWidget {
  @override
  _userHomeState createState() => _userHomeState();
}

class _userHomeState extends State<userHome> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/images/images.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text('Surveyor Home Page'),
              backgroundColor: Color(0xFF5F7360),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 100),
                        primary: Color(0xFF5F7360).withOpacity(0.5),
                      ), //style
                      child: Text(
                        'Start New Survey',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (BuildContext context) => survey(),
                          ),
                          (Route route) => true,
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 100),
                        primary: Color(0xFF5F7360).withOpacity(0.5),
                      ), //style
                      child: Text(
                        'Resume Current Survey',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        //resume
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 100),
                        primary: Color(0xFF5F7360).withOpacity(0.5),
                      ), //style
                      child: Text(
                        'Clear Survey Form',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        //clear action
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
