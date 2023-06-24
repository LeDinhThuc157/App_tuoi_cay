
import 'package:app_tuoi_cay/theme/colors.dart';
import 'package:app_tuoi_cay/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({ Key? key }) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: secondary,
        appBar: CustomAppbar(),
        body: getBody(),
      );
  }

  getBody(){
    double  heightR,widthR;
    heightR = MediaQuery.of(context).size.height / 1080; //v26
    widthR = MediaQuery.of(context).size.width / 2400;
    var curR = widthR;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50*heightR,),
          // getActions(),
          SizedBox(height: 50*heightR,),

        ],
      ),
    );
  }

}