import 'package:flutter/material.dart';

class adminFixedDataTable extends StatefulWidget {
  @override
  _adminFixedDataTableState createState() => _adminFixedDataTableState();
}

class _adminFixedDataTableState extends State<adminFixedDataTable> {
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
              backgroundColor:
                  Colors.white.withOpacity(.95), //background color of scaffold
              appBar: AppBar(
                title: Text("Fixed-Response Survey Table"), //title of app
                backgroundColor:
                    Color(0xFF5F7360), //background color of app bar
              ),
              body: SingleChildScrollView(
                  padding: EdgeInsets.all(15),
                  child: Table(
                    border: TableBorder.all(
                        width: 1, color: Colors.black), //table border
                    children: [
                      TableRow(children: [
                        TableCell(child: Text("FormID")),
                        TableCell(child: Text("Name")),
                        TableCell(child: Text("Email")),
                        TableCell(child: Text("Age")),
                        TableCell(child: Text("Year"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("1")),
                        TableCell(child: Text("Jack")),
                        TableCell(child: Text("Jack@shsu.edu")),
                        TableCell(child: Text("19")),
                        TableCell(child: Text("1"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("2")),
                        TableCell(child: Text("Diane")),
                        TableCell(child: Text("Diane@shsu.edu")),
                        TableCell(child: Text("19")),
                        TableCell(child: Text("2"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("3")),
                        TableCell(child: Text("Bonnie")),
                        TableCell(child: Text("Bonnie@shsu.edu")),
                        TableCell(child: Text("24")),
                        TableCell(child: Text("5"))
                      ]),
                    ],
                  ))),
        ),
      ],
    );
  }
}
