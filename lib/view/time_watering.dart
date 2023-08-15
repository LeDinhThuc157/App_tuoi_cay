import 'package:flutter/material.dart';

import '../widget/custom_appbar.dart';
import 'package:app_tuoi_cay/theme/colors.dart';

import 'add_time_wartering.dart';

class TimeWatering extends StatefulWidget {
  const TimeWatering({super.key});

  @override
  State<TimeWatering> createState() => _TimeWateringState();
}

class _TimeWateringState extends State<TimeWatering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
      appBar: CustomAppbar(),
      body: getBody(),
    );
  }

  getBody() {
    double heightR, widthR;
    heightR = MediaQuery.of(context).size.height / 1080; //v26
    widthR = MediaQuery.of(context).size.width / 2400;
    var curR = widthR;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20*heightR,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20*heightR, 0, 20*heightR, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Time wartering",
                    style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28*heightR
                  ),),

                  IconButton(
                    icon: Icon(Icons.add_circle,size: 50*heightR,color: greenbase,),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Add_Time_Wartering()));
                    },
                  ),
                ],
              ),
            ),
            // ListView.builder(itemBuilder: ),
          ],
        ),
      ),
    );
  }
}
