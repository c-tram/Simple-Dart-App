import 'package:flutter/material.dart';
import 'package:test_app/adminFixedDataTable.dart';
import 'package:test_app/adminOpenDataTable.dart';
import 'survey.dart';

class adminHome extends StatefulWidget {
  @override
  _adminHomeState createState() => _adminHomeState();
}

class _adminHomeState extends State<adminHome> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('Admin Home Page'),
              backgroundColor: Color(0xFF5F7360),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 200,
                      height: 150,
                      child: Image.asset('asset/images/images.png')),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 80),
                        primary: Color(0xFF5F7360).withOpacity(0.95),
                      ), //style
                      child: Text(
                        'Access Fixed-Response Survey Data',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                adminFixedDataTable(),
                          ),
                          (Route route) => true,
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 80),
                        primary: Color(0xFF5F7360).withOpacity(0.95),
                      ), //style
                      child: Text(
                        'Access Open-Response Survey Data',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                adminOpenDataTable(),
                          ),
                          (Route route) => true,
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 80),
                        primary: Color(0xFF5F7360).withOpacity(0.95),
                      ), //style
                      child: Text(
                        'Add/Remove Surveyor Login',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        //resume
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 80),
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
                    padding: EdgeInsets.all(6.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 80),
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
                    padding: EdgeInsets.all(6.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 80),
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
