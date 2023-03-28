import 'package:flutter/material.dart';
import 'package:test_app/adminHome.dart';

class survey extends StatefulWidget {
  @override
  _surveyState createState() => _surveyState();
}

class _surveyState extends State<survey> {
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
            resizeToAvoidBottomInset: true,
            backgroundColor: Colors.white.withOpacity(.90),
            appBar: AppBar(
              title: Text('Survey Form Part 1'),
              backgroundColor: Color(0xFF5F7360),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Demographic Information',
                    style: TextStyle(
                      fontSize: 35,
                      fontStyle: FontStyle.italic,
                      color: Color(0xFF5F7360),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Name. -> First Last',
                    ),
                    /*validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },*/
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText:
                          'Email. -> If OK accepting Email Communications',
                    ),
                    /*validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },*/
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Age',
                    ),
                    /*validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },*/
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText:
                          'Year. -> 1 = Freshman... 4 = Senior... 5+ = Grad',
                    ),
                    /*validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },*/
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Container(
                    child: ElevatedButton(
                      child: const Text('Next Page'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Survey2()),
                        );
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

class Survey2 extends StatefulWidget {
  @override
  _Survey2 createState() => _Survey2();
}

class _Survey2 extends State<Survey2> {
  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Success!"),
          content: Text("Survey Submitted :)"),
          actions: [
            MaterialButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();

                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (BuildContext context) => adminHome(),
                  ),
                  (Route route) => false,
                );
              },
            ),
          ],
        );
      },
    );
  }

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
            resizeToAvoidBottomInset: true,
            backgroundColor: Colors.white.withOpacity(.90),
            appBar: AppBar(
              title: Text('Survey Form Part 2'),
              backgroundColor: Color(0xFF5F7360),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Open-Response Information',
                    style: TextStyle(
                      fontSize: 35,
                      fontStyle: FontStyle.italic,
                      color: Color(0xFF5F7360),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Question 1',
                    ),
                    /*validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },*/
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Question 2',
                    ),
                    /*validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },*/
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Question 3',
                    ),
                    /*validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },*/
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Question...',
                    ),
                    /*validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },*/
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                  ),
                  Container(
                    child: ElevatedButton(
                      child: const Text('Submit Survey'),
                      onPressed: () {
                        _showDialog();
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
