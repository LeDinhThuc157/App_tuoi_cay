import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../widget/custom_appbar.dart';
class Add_Time_Wartering extends StatefulWidget {
  const Add_Time_Wartering({Key? key}) : super(key: key);

  @override
  _Add_Time_WarteringState createState() => _Add_Time_WarteringState();
}
class _Add_Time_WarteringState extends State<Add_Time_Wartering> {
  List listHumanity=['10%','20%','30%','40%','50%','60%','70%','80%','90%','100%'];
  List listHour=['00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'];
  List listMinutes=['00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60'];
  String value_choose ='',minutes_choose='',hour_choose='';
  @override
  void initState() {
    super.initState();
    new_data();
  }
  new_data(){
    value_choose=listHumanity[0];
    minutes_choose=listMinutes[0];
    hour_choose=listHour[0];
  }
  @override
  Widget build(BuildContext context){
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
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20*heightR),
          child: Image.asset('assets/icon1.png',width: 120*heightR,height: 140*heightR,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding:const EdgeInsets.only(left:16,right:10,top: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: inActiveIcon,width: 2),
                  backgroundBlendMode: BlendMode.color,
                  borderRadius: BorderRadius.circular(16)
              ),
              height: 100.0,
              width: 100,
              child: DropdownButton(
                dropdownColor: Colors.white,
                underline: const SizedBox(),
                isExpanded: true,
                style: const TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  color: shadowColor,
                ),
                value: hour_choose,
                onChanged:(newHour){
                  setState(() {
                    hour_choose = newHour.toString();
                  });
                } ,
                items: listHour.map((hour){
                  return DropdownMenuItem(
                      value: hour,
                      child: Text(hour,style: TextStyle(color: shadowColor),));
                }).toList(),
              ),
            ),
            Container(
              padding:const EdgeInsets.only(left:16,right:10,top: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: inActiveIcon,width: 2),
                  backgroundBlendMode: BlendMode.color,
                  borderRadius: BorderRadius.circular(16)
              ),
              height: 100.0,
              width: 100,
              child: DropdownButton(
                dropdownColor: Colors.white,
                underline: const SizedBox(),
                isExpanded: true,
                style: const TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  color: shadowColor,
                ),
                value: minutes_choose,
                onChanged:(newMinutes){
                  setState(() {
                    minutes_choose = newMinutes.toString();
                  });
                } ,
                items: listMinutes.map((minutes){
                  return DropdownMenuItem(
                      value: minutes,
                      child: Text(minutes,style: TextStyle(color: shadowColor),));
                }).toList(),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(30*heightR),
          child: Container(
            padding: EdgeInsets.only(left: 16*heightR,right: 16*heightR, top: 16*heightR,bottom: 16*heightR),
            decoration: BoxDecoration(
                color: Colors.white,
                border: BorderDirectional(
                  top: BorderSide(color: shadowColor,width: 2*heightR),
                  bottom: BorderSide(color: shadowColor,width: 2*heightR),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Humanity',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black38,width: 1*heightR),
                      borderRadius: BorderRadius.circular(10*heightR)
                  ),
                  height: 50*heightR,
                  width: 100*heightR,
                  padding: EdgeInsets.only(left: 25*heightR),
                  child: DropdownButton(
                    dropdownColor: Colors.white,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 36*heightR,
                    underline: const SizedBox(),
                    isExpanded: true,
                    style:  TextStyle(
                        fontSize: 18*heightR,
                        color: Colors.black54
                    ),
                    value: value_choose,
                    onChanged:(newValue){
                      setState(() {
                        value_choose = newValue.toString();
                      });
                    } ,
                    items: listHumanity.map((valueItem){
                      return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem));
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0*heightR),
          child: Container(
            width: 130*heightR,
            height: 100*heightR,
            decoration: BoxDecoration(
                color: grey,
                border: Border.all(color: inActiveIcon,width: 3*heightR),
                borderRadius: BorderRadius.circular(16*heightR)
            ),
            child: TextButton(
              child: Text(
                'Save',
                style: TextStyle(
                    color:Colors.black,
                    fontSize: 28*heightR,
                ),
              ),
              onPressed:(){
                print("Time: $hour_choose : $minutes_choose");
                print("Humanity: $value_choose");
                setState(() {
                  hour_choose=listHour[0];
                  minutes_choose=listMinutes[0];
                  value_choose=listHumanity[0];
                });
              },
            ),
          ),
        )
      ],
    );
  }
}