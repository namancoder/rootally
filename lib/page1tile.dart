import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageOneTile extends StatelessWidget {
  const PageOneTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 20, bottom: 20.0),
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.85 / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Session 1",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text('Completed',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                ),
                Text("Performed at \n8:00 AM"),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              border: Border.all(
                color: Colors.transparent,
                width: 5,
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.85 / 2,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Image.network(
              "https://images.unsplash.com/photo-1517836357463-d25dfeac3438?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
