import 'package:flutter/cupertino.dart';

const fontSize = 10.0;

Widget pageTwoTile() {
  return Container(
    alignment: Alignment.center,
    height: 200,
    width: 100,
    margin: EdgeInsetsDirectional.all(8.0),
    decoration: BoxDecoration(
      color: Color(0xffDCDCDC),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "Set 2",
                  style:
                      TextStyle(fontSize: fontSize, color: Color(0xff8f9491)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Min",
                style:
                    TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
              ),
              Text(
                "64\u00b0",
                style: TextStyle(fontSize: fontSize, color: Color(0xff8f9491)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Max",
                style:
                    TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
              ),
              Text(
                "64\u00b0",
                style: TextStyle(fontSize: fontSize, color: Color(0xff8f9491)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Avg",
                style:
                    TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
              ),
              Text(
                "64\u00b0",
                style: TextStyle(fontSize: fontSize, color: Color(0xff8f9491)),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
