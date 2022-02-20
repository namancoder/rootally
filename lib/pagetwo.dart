import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:rootally/page2Tile.dart';
import 'package:fl_chart/fl_chart.dart';

class PageTwo extends StatefulWidget {
  PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = new GlobalKey();

  final Color rightBarColor = const Color(0xff53fdd7);
  final Color leftBarColor = const Color(0xffff5182);
  final double width = 30;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final barGroup1 = makeGroupData(0, 5, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 5);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 17, 6);
    final barGroup6 = makeGroupData(5, 19, 1.5);
    final barGroup7 = makeGroupData(6, 10, 1.5);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        toolbarHeight: 30.0,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              children: [
                Text(
                  "You did amazing!",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                ),
                Text(
                  "Session 1 Complete",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            child: CircularPercentIndicator(
              backgroundColor: Colors.transparent,
              radius: 70.0,
              lineWidth: 5.0,
              animation: true,
              percent: 0.64,
              center: new Text("Accuracy \n    64%"),
              progressColor: Colors.green,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text('Play Video',
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
              TextButton(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text('Analytics',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey[400],
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
                onPressed: () {
                  print('Pressed');
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("  Set Details",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffeb0e1d)),
                        ),
                        Text(" Complete"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffeb0e1d)),
                        ),
                        Text(" Skipped"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffeb0e1d)),
                        ),
                        Text(" Incomplete"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ExpansionTileCard(
              initiallyExpanded: true,
              key: cardA,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Leg Raise',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffeb0e1d)),
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff2af00c)),
                      ),
                      SizedBox(width: 2.0),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffe2ed0c)),
                      ),
                    ],
                  ),
                ],
              ),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Container(
                      height: 200,
                      child: BarChart(
                        BarChartData(
                          // read about it in the BarChartData section
                          maxY: 20,
                          barTouchData: BarTouchData(
                              touchTooltipData: BarTouchTooltipData(
                                tooltipBgColor: Colors.grey,
                                getTooltipItem: (_a, _b, _c, _d) => null,
                              ),
                              touchCallback: (FlTouchEvent event, response) {
                                if (response == null || response.spot == null) {
                                  setState(() {
                                    touchedGroupIndex = -1;
                                    showingBarGroups = List.of(rawBarGroups);
                                  });
                                  return;
                                }

                                touchedGroupIndex =
                                    response.spot!.touchedBarGroupIndex;

                                setState(() {
                                  if (!event.isInterestedForInteractions) {
                                    touchedGroupIndex = -1;
                                    showingBarGroups = List.of(rawBarGroups);
                                    return;
                                  }
                                  showingBarGroups = List.of(rawBarGroups);
                                  if (touchedGroupIndex != -1) {
                                    var sum = 0.0;
                                    for (var rod
                                        in showingBarGroups[touchedGroupIndex]
                                            .barRods) {
                                      sum += rod.y;
                                    }
                                    final avg = sum /
                                        showingBarGroups[touchedGroupIndex]
                                            .barRods
                                            .length;

                                    showingBarGroups[touchedGroupIndex] =
                                        showingBarGroups[touchedGroupIndex]
                                            .copyWith(
                                      barRods:
                                          showingBarGroups[touchedGroupIndex]
                                              .barRods
                                              .map((rod) {
                                        return rod.copyWith(y: avg);
                                      }).toList(),
                                    );
                                  }
                                });
                              }),
                          titlesData: FlTitlesData(
                            show: true,
                            rightTitles: SideTitles(showTitles: false),
                            topTitles: SideTitles(showTitles: false),
                            bottomTitles: SideTitles(
                              showTitles: true,
                              getTextStyles: (context, value) =>
                                  const TextStyle(
                                      color: Color(0xff7589a2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                              margin: 20,
                              getTitles: (double value) {
                                switch (value.toInt()) {
                                  case 0:
                                    return 'SET 1';
                                  case 1:
                                    return 'SET 2';
                                  case 2:
                                    return 'SET 3';
                                  case 3:
                                    return 'Tu';
                                  case 4:
                                    return 'Fr';
                                  case 5:
                                    return 'St';
                                  case 6:
                                    return 'Sn';
                                  default:
                                    return '';
                                }
                              },
                            ),
                            leftTitles: SideTitles(
                              showTitles: true,
                              getTextStyles: (context, value) =>
                                  const TextStyle(
                                      color: Color(0xff7589a2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                              margin: 8,
                              reservedSize: 28,
                              interval: 1,
                              getTitles: (value) {
                                if (value == 0) {
                                  return '0';
                                } else if (value == 4) {
                                  return '4';
                                } else if (value == 8)
                                  return '8';
                                else if (value == 12)
                                  return '12';
                                else if (value == 16)
                                  return '16';
                                else if (value == 20)
                                  return '20';
                                else {
                                  return '';
                                }
                              },
                            ),
                          ),

                          barGroups: showingBarGroups,
                          gridData: FlGridData(show: false),
                        ),
                        swapAnimationDuration:
                            Duration(milliseconds: 150), // Optional
                        swapAnimationCurve: Curves.easeInOut, // Optional
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Range Of Motion",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                  height: 70.0,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return pageTwoTile();
                      }),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ExpansionTileCard(
              key: cardB,
              title: Text('KNEE BAND'),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Container(
                      height: 200,
                      child: BarChart(
                        BarChartData(
                          // read about it in the BarChartData section
                          maxY: 20,
                          barTouchData: BarTouchData(
                              touchTooltipData: BarTouchTooltipData(
                                tooltipBgColor: Colors.grey,
                                getTooltipItem: (_a, _b, _c, _d) => null,
                              ),
                              touchCallback: (FlTouchEvent event, response) {
                                if (response == null || response.spot == null) {
                                  setState(() {
                                    touchedGroupIndex = -1;
                                    showingBarGroups = List.of(rawBarGroups);
                                  });
                                  return;
                                }

                                touchedGroupIndex =
                                    response.spot!.touchedBarGroupIndex;

                                setState(() {
                                  if (!event.isInterestedForInteractions) {
                                    touchedGroupIndex = -1;
                                    showingBarGroups = List.of(rawBarGroups);
                                    return;
                                  }
                                  showingBarGroups = List.of(rawBarGroups);
                                  if (touchedGroupIndex != -1) {
                                    var sum = 0.0;
                                    for (var rod
                                        in showingBarGroups[touchedGroupIndex]
                                            .barRods) {
                                      sum += rod.y;
                                    }
                                    final avg = sum /
                                        showingBarGroups[touchedGroupIndex]
                                            .barRods
                                            .length;

                                    showingBarGroups[touchedGroupIndex] =
                                        showingBarGroups[touchedGroupIndex]
                                            .copyWith(
                                      barRods:
                                          showingBarGroups[touchedGroupIndex]
                                              .barRods
                                              .map((rod) {
                                        return rod.copyWith(y: avg);
                                      }).toList(),
                                    );
                                  }
                                });
                              }),
                          titlesData: FlTitlesData(
                            show: true,
                            rightTitles: SideTitles(showTitles: false),
                            topTitles: SideTitles(showTitles: false),
                            bottomTitles: SideTitles(
                              showTitles: true,
                              getTextStyles: (context, value) =>
                                  const TextStyle(
                                      color: Color(0xff7589a2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                              margin: 20,
                              getTitles: (double value) {
                                switch (value.toInt()) {
                                  case 0:
                                    return 'Mn';
                                  case 1:
                                    return 'Te';
                                  case 2:
                                    return 'Wd';
                                  case 3:
                                    return 'Tu';
                                  case 4:
                                    return 'Fr';
                                  case 5:
                                    return 'St';
                                  case 6:
                                    return 'Sn';
                                  default:
                                    return '';
                                }
                              },
                            ),
                            leftTitles: SideTitles(
                              showTitles: true,
                              getTextStyles: (context, value) =>
                                  const TextStyle(
                                      color: Color(0xff7589a2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                              margin: 8,
                              reservedSize: 28,
                              interval: 1,
                              getTitles: (value) {
                                if (value == 0) {
                                  return '0';
                                } else if (value == 4) {
                                  return '4';
                                } else if (value == 8)
                                  return '8';
                                else if (value == 12)
                                  return '12';
                                else if (value == 16)
                                  return '16';
                                else if (value == 20)
                                  return '20';
                                else {
                                  return '';
                                }
                              },
                            ),
                          ),

                          barGroups: showingBarGroups,
                          gridData: FlGridData(show: false),
                        ),
                        swapAnimationDuration:
                            Duration(milliseconds: 150), // Optional
                        swapAnimationCurve: Curves.easeInOut, // Optional
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 70.0,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return pageTwoTile();
                      }),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ExpansionTileCard(
              key: cardC,
              title: Text('HAMSTRING STRETCH'),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Container(
                      height: 200,
                      child: BarChart(
                        BarChartData(
                          // read about it in the BarChartData section
                          maxY: 20,
                          barTouchData: BarTouchData(
                              touchTooltipData: BarTouchTooltipData(
                                tooltipBgColor: Colors.grey,
                                getTooltipItem: (_a, _b, _c, _d) => null,
                              ),
                              touchCallback: (FlTouchEvent event, response) {
                                if (response == null || response.spot == null) {
                                  setState(() {
                                    touchedGroupIndex = -1;
                                    showingBarGroups = List.of(rawBarGroups);
                                  });
                                  return;
                                }

                                touchedGroupIndex =
                                    response.spot!.touchedBarGroupIndex;

                                setState(() {
                                  if (!event.isInterestedForInteractions) {
                                    touchedGroupIndex = -1;
                                    showingBarGroups = List.of(rawBarGroups);
                                    return;
                                  }
                                  showingBarGroups = List.of(rawBarGroups);
                                  if (touchedGroupIndex != -1) {
                                    var sum = 0.0;
                                    for (var rod
                                        in showingBarGroups[touchedGroupIndex]
                                            .barRods) {
                                      sum += rod.y;
                                    }
                                    final avg = sum /
                                        showingBarGroups[touchedGroupIndex]
                                            .barRods
                                            .length;

                                    showingBarGroups[touchedGroupIndex] =
                                        showingBarGroups[touchedGroupIndex]
                                            .copyWith(
                                      barRods:
                                          showingBarGroups[touchedGroupIndex]
                                              .barRods
                                              .map((rod) {
                                        return rod.copyWith(y: avg);
                                      }).toList(),
                                    );
                                  }
                                });
                              }),
                          titlesData: FlTitlesData(
                            show: true,
                            rightTitles: SideTitles(showTitles: false),
                            topTitles: SideTitles(showTitles: false),
                            bottomTitles: SideTitles(
                              showTitles: true,
                              getTextStyles: (context, value) =>
                                  const TextStyle(
                                      color: Color(0xff7589a2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                              margin: 20,
                              getTitles: (double value) {
                                switch (value.toInt()) {
                                  case 0:
                                    return 'Mn';
                                  case 1:
                                    return 'Te';
                                  case 2:
                                    return 'Wd';
                                  case 3:
                                    return 'Tu';
                                  case 4:
                                    return 'Fr';
                                  case 5:
                                    return 'St';
                                  case 6:
                                    return 'Sn';
                                  default:
                                    return '';
                                }
                              },
                            ),
                            leftTitles: SideTitles(
                              showTitles: true,
                              getTextStyles: (context, value) =>
                                  const TextStyle(
                                      color: Color(0xff7589a2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                              margin: 8,
                              reservedSize: 28,
                              interval: 1,
                              getTitles: (value) {
                                if (value == 0) {
                                  return '0';
                                } else if (value == 4) {
                                  return '4';
                                } else if (value == 8)
                                  return '8';
                                else if (value == 12)
                                  return '12';
                                else if (value == 16)
                                  return '16';
                                else if (value == 20)
                                  return '20';
                                else {
                                  return '';
                                }
                              },
                            ),
                          ),

                          barGroups: showingBarGroups,
                          gridData: FlGridData(show: false),
                        ),
                        swapAnimationDuration:
                            Duration(milliseconds: 150), // Optional
                        swapAnimationCurve: Curves.easeInOut, // Optional
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 70.0,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return pageTwoTile();
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(barsSpace: 0, x: x, barRods: [
      BarChartRodData(
        y: y1,
        colors: [leftBarColor],
        width: width,
        borderRadius: BorderRadius.zero,
      ),
      BarChartRodData(
        y: y2,
        colors: [rightBarColor],
        width: width,
        borderRadius: BorderRadius.zero,
      ),
    ]);
  }

  Widget makeTransactionsIcon() {
    const width = 4.5;
    const space = 3.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 42,
          color: Colors.white.withOpacity(1),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
      ],
    );
  }
}
