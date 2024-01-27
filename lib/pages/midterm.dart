import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class midterm extends StatefulWidget {
  const midterm({super.key});

  @override
  State<midterm> createState() => _midtermState();
}

class _midtermState extends State<midterm> {
  String _num = "0";

  Widget buildItem({
    required String label_1,
  }) {
    return Container(
      width: 150,
      height: 70,
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 120, 203, 108),
        border: Border.all(width: 1.0, color: Colors.white),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            setState(() {
              if (_num == "0") {
                _num = label_1;
              } else {
                _num = _num + label_1;
              }
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label_1,
                style: GoogleFonts.notoSansThai(
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem({
    required String label_1,
  }) {
    return Container(
      width: 100,
      height: 70,
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 227, 219, 219),
        border: Border.all(width: 1.0, color: Colors.white),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            setState(() {
              if (_num.substring(_num.length - 1) == "÷") {
                _num = _num.replaceRange(_num.length - 1, null, label_1);
              } else if (_num.substring(_num.length - 1) == "×") {
                _num = _num.replaceRange(_num.length - 1, null, label_1);
              } else if (_num.substring(_num.length - 1) == "-") {
                _num = _num.replaceRange(_num.length - 1, null, label_1);
              } else if (_num.substring(_num.length - 1) == "+") {
                _num = _num.replaceRange(_num.length - 1, null, label_1);
              } else if (_num == "0") {
                _num = "0";
              } else {
                _num = _num + label_1;
              }
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label_1,
                style: GoogleFonts.notoSansThai(
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var itemList_1 = [
      Expanded(child: buildItem(label_1: "7")),
      Expanded(child: buildItem(label_1: "8")),
      Expanded(child: buildItem(label_1: "9")),
      Expanded(child: _buildItem(label_1: "÷")),
    ];
    var itemList_2 = [
      Expanded(child: buildItem(label_1: "4")),
      Expanded(child: buildItem(label_1: "5")),
      Expanded(child: buildItem(label_1: "6")),
      Expanded(child: _buildItem(label_1: "×")),
    ];
    var itemList_3 = [
      Expanded(child: buildItem(label_1: "1")),
      Expanded(child: buildItem(label_1: "2")),
      Expanded(child: buildItem(label_1: "3")),
      Expanded(child: _buildItem(label_1: "-")),
    ];
    var itemList_4 = [
      Expanded(child: clear()),
      Expanded(child: backspace()),
    ];
    var itemList_5 = [
      Expanded(flex: 3,child: buildItem(label_1: "0")),
      Expanded(child: _buildItem(label_1: "+")),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                    Icons.calculate,
                    color: Colors.green,
                    size: 30,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "MY CALCULATOR",
                    style: GoogleFonts.kanit(
                        fontSize: 30.0, fontWeight: FontWeight.w300),
                  ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    _num,
                    style: GoogleFonts.kanit(
                        fontSize: 50.0, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: itemList_4,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: itemList_1,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: itemList_2,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: itemList_3,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: itemList_5,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Expanded(child: enter())],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 5.0))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget clear() {
    return Container(
      width: 150,
      height: 70,
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 227, 219, 219),
        border: Border.all(width: 1.0, color: Colors.white),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            setState(() {
              _num = "0";
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "C",
                style: GoogleFonts.notoSansThai(
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget backspace() {
    return Container(
      width: 150,
      height: 70,
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 227, 219, 219),
        border: Border.all(width: 1.0, color: Colors.white),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            setState(() {
              if (_num.length == 1) {
                _num = "0";
              } else {
                _num = _num.replaceRange(_num.length - 1, null, "");
              }
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.backspace_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget enter() {
    return Container(
      width: 150,
      height: 70,
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 20, 94, 31),
        border: Border.all(width: 1.0, color: Colors.white),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            setState(() {
              _num = "0";
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "=",
                style: GoogleFonts.notoSansThai(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
