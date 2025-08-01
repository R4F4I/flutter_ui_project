import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text('Digilyzer'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                elevation: 7,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("CONTACT POINT",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          Text("Unreported",
                            style: TextStyle(color: Colors.blue[400]),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("DATE: ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          Text("Unreported",
                            style: TextStyle(color: Colors.blue[400]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 7,
                color: Colors.amber,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TopBarInfo(),
                    Row(
                      children: [ 
                        SpeedometerStatus(title: "MTD",),
                        SpeedometerStatus(title: "DTD"),
                      ],
                    ),
                    Row(
                      children: [ 
                        SpeedometerStatus(title: "GOLM",showRate: false,showbottomCard: false,),
                        SpeedometerStatus(title: "MGOLY",showRate: false,showbottomCard: false,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BlueShield(topText: "1.3 B",bottomText: "CYTD"),
                        BlueShield(topText: "0",bottomText: "LYTD"),
                        BlueShield(topText: "222 M",bottomText: "LMS"),
                        BlueShield(topText: "0",bottomText: "LYMS"),
                      ],
                    ),
                    Divider(
                      color: Colors.blueGrey[900],
                      thickness: 4,
                    ),
                    Text("TOP BRANDS",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                    

                    Icon(Icons.pie_chart_sharp, size: MediaQuery.of(context).size.width*0.7, color: Colors.black),
                    Divider(
                      color: Colors.blueGrey[900],
                      thickness: 4,
                    ),
                    Text("SALES TYPE",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.pie_chart_sharp, size: MediaQuery.of(context).size.width*0.7, color: Colors.black),
                  ],
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.limeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1)
                  //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                ),
                elevation: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("TOP THREE BRANDS SALES",style: TextStyle(color: Colors.blue, fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.start),
                    Table(
                      border: TableBorder.all(color: Colors.blueGrey[900]!, width: 2),
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,

                      children: [
                        TableRow(
                          children: [
                            // _tableText("BRAND"),
                            _tableHeaderText("BRAND" ),
                            _tableHeaderText("SALES" ),
                            _tableHeaderText("ACH%"  ),
                            _tableHeaderText("GOLM%" ),
                            _tableHeaderText("MGOLY%"),
                          ]
                        ),
                        TableRow(
                          children: [
                            _tableBodyText("LALAP" ),
                            _tableBodyText("49.8 M"),
                            _tableBodyText("99.3"  ),
                            _tableBodyText("-2"    ),
                            _tableBodyText("0"     ),
                          ]
                        ),
                        TableRow(
                          children: [
                            _tableBodyText("GEBON" ),
                            _tableBodyText("21.5 M"),
                            _tableBodyText("79.0"  ),
                            _tableBodyText("-1"    ),
                            _tableBodyText("0"     ),
                          ]
                        ),
                        TableRow(
                          children: [
                            _tableBodyText("GRAT"  ),
                            _tableBodyText("15.3 M"),
                            _tableBodyText("77.3"  ),
                            _tableBodyText("-12"   ),
                            _tableBodyText("0"     ),
                          ]
                        ),
                      ],
                    )
                  ],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                  color: Colors.lime,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1)
                ),
                elevation: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CALL REPORT INFORMATION",style: TextStyle(color: Colors.blue, fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.start),
                            Text("FRIDAY, AUGUST 1, 2025",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),textAlign: TextAlign.start),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.refresh_rounded, color: Colors.green[600],size: 45,),
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        StatusCard(title: "TOTAL PLANNED",subtitle: "4726",themeColor: Colors.blue[400],),
                        StatusCard(title: "PLANNED DONE",subtitle: "0",themeColor: Colors.blue[400],),
                        StatusCard(title: "TOTAL DONE",subtitle: "6",themeColor: Colors.black,),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        StatusCard(title: "UNPLANNED DONE",subtitle: "0",themeColor: Colors.blue[400],),
                        StatusCard(title: "NOT HAPPENED",subtitle: "4726",themeColor: Colors.blue[400],),
                        StatusCard(title: "AVG CALL PER DAY",subtitle: "6",themeColor: Colors.black,),
                      ],
                    ),
                    Text("CALL REPORT INFORMATION",style: TextStyle(color: Colors.blue, fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.start),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        bottomDoctorsCoverage("TARGET","8096"),
                        bottomDoctorsCoverage("PLANNED","13178"),
                        bottomDoctorsCoverage("COVERED","465465465"),
                        bottomDoctorsCoverage("COVERAGE","545"),
                        
                      ],
                    )
                  ],
                )
              ),
            )
          ],
        ),
      )
    );
  }

  Card bottomDoctorsCoverage(String title, String subtitle) {
    
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
        side: BorderSide(color: Colors.blue,width: 1.6)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(title,style: TextStyle(color: Colors.blue[400], fontSize: 20,fontWeight: FontWeight.w100),),
            SizedBox(
              width: 50,
              child: Divider(
                color: Colors.blue[400],
                thickness: 2,
                height: 5,
              ),
            ),
            Text(subtitle,style: TextStyle(color: Colors.blue[400], fontSize: 20,fontWeight: FontWeight.w100),),
          ],
        ),
      ),
    );
  }

Widget _tableHeaderText(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
Widget _tableBodyText(String text) {
    return Text(
      text,
      style: TextStyle(color:Colors.blue[400], fontSize: 20,fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}

class StatusCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color? themeColor;
  const StatusCard({
    super.key,
    this.title = "title",
    this.subtitle = "subtitle",
    this.themeColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
        side: BorderSide(color: themeColor??Colors.white,width: 1.6)
      ),
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.all(0),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                topRight: Radius.circular(13)
              )
            ),
            color: themeColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title,style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.w100),),
            ),
          ),
          Text(subtitle,style: TextStyle(color: themeColor, fontSize: 20,fontWeight: FontWeight.w100),),
          
        ],
      ),
    );
  }
}



class BlueShield extends StatelessWidget {
  final String topText;
  final String bottomText;
  const BlueShield({
    super.key,
    this.topText = "EMPTY",
    this.bottomText = "EMPTY",
    });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        // color: Colors.blue,
        gradient: LinearGradient(
          colors: [const Color.fromARGB(255, 66, 245, 123), Colors.blue[600]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(topLeft: Radius.zero,topRight: Radius.zero, bottomLeft: Radius.circular(65), bottomRight: Radius.circular(65)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          children: [
            Text(topText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
                width: 50,
              child: Divider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            Text(bottomText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      )
    );
  }
}


class SpeedometerBottomCard extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color? backgroundColor;
  final Color? textColor;

  const SpeedometerBottomCard({
    super.key,
    required this.title,
    required this.fontSize,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Card(
      color: backgroundColor, 
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
        side: BorderSide(color: Colors.black),
      ),
      child: Text(title,style: TextStyle(color: textColor,fontSize: fontSize),textAlign: TextAlign.center,)));
  }
}


class TopBarInfo extends StatelessWidget {
  const TopBarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero, // added to hide the colored space of the widget behind
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("SALES INFORMATION",style: TextStyle(color: Colors.white),),
                Text("Closing Date: Jun 30, 2025",style: TextStyle(color: Colors.white),),
              ],
            ),
            Icon(Icons.refresh_rounded, color: Colors.green[600],size: 30,),
          ],
        ),
      ),
    );
  }
}


class SpeedometerStatus extends StatelessWidget {
  final bool showRate;
  final bool showbottomCard;
  final num rate;
  final String title;
  const SpeedometerStatus({
    super.key,
    this.showRate = true,
    this.showbottomCard = true,
    this.rate = 77,
    this.title = "MTD",
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              side: BorderSide(color: Colors.black)
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: BorderSide(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(child: DecoratedBox(decoration: BoxDecoration(),child:Text(title,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),)),
                  showRate 
                    ? Expanded(child: DecoratedBox(decoration: BoxDecoration(color: Colors.black),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Icon(Icons.upgrade,color: Colors.green[600],),Padding(padding: EdgeInsets.only(right: 3) ,child: Text("85%",style: TextStyle(color: Colors.white,fontSize: 20,),),),],))) 
                    : SizedBox.shrink(),
                ],
              ),
            ),
            Icon(Icons.speed_outlined,color: Colors.red, size: 150),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: BorderSide(color: Colors.black)
              ),
              child: Column(
                  children: [
                    if (showbottomCard)...[
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.max,
                        children: [
                          SpeedometerBottomCard(fontSize:25 ,title: "SALES", backgroundColor: Colors.black, textColor: Colors.white),
                          SpeedometerBottomCard(fontSize:25 ,title: "214.5M", backgroundColor: Colors.greenAccent[700], textColor: Colors.black),
                          
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.max,
                        children: [
                          SpeedometerBottomCard(fontSize:25 ,title: "TARGET", backgroundColor: Colors.black, textColor: Colors.white),
                          SpeedometerBottomCard(fontSize:25 ,title: "252.3", backgroundColor: Colors.blue, textColor: Colors.white),
                        ],
                      ),
                    ] else ...[
                      // Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Icon(Icons.downhill_skiing_sharp,color: Colors.green[600],),Padding(padding: EdgeInsets.only(right: 3) ,child: Text("85%",style: TextStyle(color: Colors.white,fontSize: 20,),),),],))
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_downward_sharp ,color: Colors.red,),
                          Padding(
                            padding: const EdgeInsets.only(right: 3),
                            child: Text(
                              "-3%",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      )
                    ]
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}