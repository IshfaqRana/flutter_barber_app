
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:chappers/const/colors.dart';
import 'package:chappers/widgets/custom_button.dart';
import 'package:chappers/widgets/custom_nav_bar.dart';
import 'package:chappers/widgets/custom_text_input.dart';
import 'package:chappers/widgets/noti_card.dart';
import 'package:chappers/widgets/product.dart';
import 'package:chappers/widgets/slot_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../widgets/responsive_widget.dart';


class NotificationScreen extends StatefulWidget {
  static const routeName = "/notifications";
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _Noti createState() => _Noti();
}
class _Noti extends State<NotificationScreen>{

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
          resizeToAvoidBottomInset: true,
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.red,
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_sharp,
                size: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Center(
                child: Text(
                  'Notifications',
                ),
              ),
            ),

          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 40.0),
            child: Icon(
              Icons.settings,
              size: 40,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
        Positioned(
        top: height*0.001,
        bottom: height*0.001,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.99,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 6), //changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 8,
                          itemBuilder: (context, index) {

                            return GestureDetector(

                              child: NotiCard(time: 'Now', des: 'Your Order has been delivered',),
                              onTap: () {

                              },
                              onLongPress: () {

                              },
                            );
                          },
                        ),
                      ),

                    ),

                  ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    child: CustomNavBar(
                      home: true,
                    )),

              ]
          ),
    );
  }


}
