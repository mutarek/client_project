import 'package:client_project/app/layouts/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Configs/app_settings.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppSetting.basecolor,
        title: Text('Contact Us'),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: (){
              Get.to(()=>ProfilePage());
            },
            child: CircleAvatar(
              radius: 20, //radius is 50
              backgroundImage: NetworkImage(
                  'https://cimages1.touristlink.com/repository/member/218021/tarek_edit_5701.jpg'), //image url
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                      fontFamily: "SignikaSemiBold",
                      fontSize: 16.0,
                      color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 22.0,
                      ),
                      hintText: "Enter Feedback",
                      hintStyle: TextStyle(
                          fontFamily: "SignikaSemiBold",
                          fontSize: 18.0)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){

                  },
                  child: Text('Sumbit'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
