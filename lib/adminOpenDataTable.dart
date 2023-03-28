import 'package:flutter/material.dart';

class adminOpenDataTable extends StatefulWidget {
  @override
  _adminOpenDataTableState createState() => _adminOpenDataTableState();
}

class _adminOpenDataTableState extends State<adminOpenDataTable> {
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
                  Colors.white.withOpacity(.90), //background color of scaffold
              appBar: AppBar(
                title: Text("Open-Response Survey Table"), //title of app
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
                        TableCell(child: Text("Question 1")),
                        TableCell(child: Text("Question 2")),
                        TableCell(child: Text("Question 3")),
                        TableCell(child: Text("Question 4"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("1")),
                        TableCell(
                            child: Text(
                                "Answer to Question 1 in as many words as possible.")),
                        TableCell(
                            child: Text(
                                "Answer to Question 2 in a lot more and many more words as possible.")),
                        TableCell(
                            child: Text(
                                "Answer to Question 3 in a lot lot lot lot more words as to fill space.")),
                        TableCell(
                            child: Text(
                                "Answer to Question 4 is a tough question to answer. I am not sure I actually want to answer this question."))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("2")),
                        TableCell(
                            child: Text(
                                "Answer to Question 1 in as many words as possible.")),
                        TableCell(
                            child: Text(
                                "Answer to Question 2 in a lot more and many more words as possible.")),
                        TableCell(
                            child: Text(
                                "Answer to Question 3 in a lot lot lot lot more words as to fill space.")),
                        TableCell(
                            child: Text(
                                "Answer to Question 4 is a tough question to answer. I am not sure I actually want to answer this question."))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("3")),
                        TableCell(
                            child: Text(
                                "Answer to Question 1 in as many words as possible.")),
                        TableCell(
                            child: Text(
                                "Answer to Question 2 in a lot more and many more words as possible.")),
                        TableCell(
                            child: Text(
                                "Answer to Question 3 in a lot lot lot lot more words as to fill space.")),
                        TableCell(
                            child: Text(
                                "Answer to Question 4 is a tough question to answer. I am not sure I actually want to answer this question."))
                      ]),
                    ],
                  ))),
        ),
      ],
    );
  }
}
