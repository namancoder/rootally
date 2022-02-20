import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:rootally/page1tile.dart';
import 'package:rootally/pagetwo.dart';
import 'package:timeline_tile/timeline_tile.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PageTwo()));
        },
        child: Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width * 0.92,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(30)),
          child: const Center(
            child: Text(
              'Start Session',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    AutoSizeText(
                      '  Good Morning \n  Jane',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      presetFontSizes: [
                        MediaQuery.of(context).size.width * 0.1
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 5.0),
                              child: AutoSizeText("Today's Progress"),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 5.0),
                              child: Text("50%"),
                            )
                          ]),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width * 0.875,
                        lineHeight: 8.0,
                        barRadius: Radius.circular(10.0),
                        progressColor: Colors.blue,
                        percent: 0.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText('Completed \n2 sessions'),
                            AutoSizeText('Pending \n2 sessions')
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                  height: 800,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.05,
                          isFirst: index == 0,
                          indicatorStyle: IndicatorStyle(
                            width: 10,
                            height: 10,
                            drawGap: true,
                          ),
                          beforeLineStyle: LineStyle(
                            color: Colors.blue.withOpacity(0.5),
                          ),
                          afterLineStyle: LineStyle(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          endChild: GestureDetector(
                            child: PageOneTile(),
                            onTap: () {},
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
