import 'package:client_project/app/Configs/app_settings.dart';
import 'package:client_project/app/layouts/admin_dashboard.dart';
import 'package:client_project/app/layouts/auths/signup.dart';
import 'package:client_project/app/layouts/booking_page.dart';
import 'package:client_project/app/layouts/contactpage.dart';
import 'package:client_project/app/layouts/profile_page.dart';
import 'package:client_project/app/layouts/storage.dart';
import 'package:client_project/app/layouts/transport_page.dart';
import 'package:client_project/app/layouts/warehouse_list.dart';
import 'package:client_project/app/layouts/warehouse_management.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppSetting.basecolor,
        title: Text(AppSetting.appName),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.all(5),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Title",
                            filled: true,
                            fillColor: AppSetting.basecolor,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black),
                        child: Center(
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(5),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Price",
                            filled: true,
                            fillColor: AppSetting.basecolor,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.all(5),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Address",
                            filled: true,
                            fillColor: AppSetting.basecolor,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Post Ads'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              elevation: 20.0,
              enableDrag: true,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              )));
        },
        child: Icon(Icons.add),
        backgroundColor: AppSetting.basecolor,
      ),
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: double.infinity,
                padding: EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                    color: AppSetting.basecolor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Text(
                    "Rent a Storage",
                    textScaleFactor: 1.5,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: (){
                    Get.back();
                  },
                  title: Text(
                    'Home',
                    textScaleFactor: 1.2,
                  ),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  leading: CircleAvatar(
                    child: Text('H'),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: (){
                    Get.to(()=>DashboardScreen());
                  },
                  title: Text(
                    'Admin',
                    textScaleFactor: 1.2,
                  ),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  leading: CircleAvatar(
                    child: Text('A'),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {
                    Get.to(() => SignUpPage());
                  },
                  title: Text(
                    'Sign/Signup',
                    textScaleFactor: 1.2,
                  ),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  leading: CircleAvatar(
                    child: Text('S'),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: (){
                    Get.to(()=>Storage());
                  },
                  title: Text(
                    'Storage',
                    textScaleFactor: 1.2,
                  ),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  leading: CircleAvatar(
                    child: Text('S'),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: (){
                    Get.to(()=> WareHouseListPage());
                  },
                  title: Text(
                    'Warehouse',
                    textScaleFactor: 1.2,
                  ),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  leading: CircleAvatar(
                    child: Text('W'),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: (){
                    Get.to(()=>WareHouseManagement());
                  },
                  title: Text(
                    'W-Management',
                    textScaleFactor: 1.2,
                  ),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  leading: CircleAvatar(
                    child: Text('M'),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {
                    Get.to(() => TransportPage());
                  },
                  title: Text(
                    'Transport',
                    textScaleFactor: 1.2,
                  ),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  leading: CircleAvatar(
                    child: Text('T'),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: (){
                    Get.to(()=> ContactPage());
                  },
                  title: Text(
                    'Contact',
                    textScaleFactor: 1.2,
                  ),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  leading: CircleAvatar(
                    child: Text('C'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) {

                  },
                  decoration: InputDecoration(
                      labelText: "Search",
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      child: FilterChip(
                        label: Text("Urgent"),
                        onSelected: (bool value){

                        },
                        selectedColor: Colors.red,
                        labelStyle: TextStyle(color: Colors.white),
                        backgroundColor: Colors.blue,
                        checkmarkColor: Colors.white,
                      )
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                      child: FilterChip(
                        selected: true,
                        label: Text("Price"),
                        onSelected: (bool value){

                        },
                        selectedColor: Colors.red,
                        labelStyle: TextStyle(color: Colors.white),
                        backgroundColor: Colors.blue,
                        checkmarkColor: Colors.white,
                      )
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: FilterChip(
                        label: Text("Upto 5000 SQF"),
                        onSelected: (bool value){

                        },
                        selectedColor: Colors.red,
                        labelStyle: TextStyle(color: Colors.white),
                        backgroundColor: Colors.blue,
                        checkmarkColor: Colors.white,
                      )
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: FilterChip(
                        label: Text("Location"),
                        onSelected: (bool value){

                        },
                        selectedColor: Colors.red,
                        labelStyle: TextStyle(color: Colors.white),
                        backgroundColor: Colors.blue,
                        checkmarkColor: Colors.white,
                      )
                  ),
                ],
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          child: Image.network(
                              'https://ghorbari.com/storage/2021/Mar/21-Sun/800/60572b9cd0240.jpeg?image=251'),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0)),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              '10000 BDT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '52000 Sqft Warehouse',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: AppSetting.basecolor,
                              ),
                              Text(
                                'Keraniganj,Dhaka',
                                style:
                                    TextStyle(fontSize: 13, color: Colors.blue),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: ElevatedButton(
                              onPressed: (){
                                Get.to(()=> BookingPage());
                              },
                              child: Text('Book'),
                            )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          child: Image.network(
                              'https://sharif.com.bd/advimages/1553948430Z89IMG20190326111619.jpg'),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0)),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              '3000 BDT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '4500 Sqft Warehouse',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: AppSetting.basecolor,
                              ),
                              Text(
                                'Jatrabari,Dhaka',
                                style:
                                    TextStyle(fontSize: 13, color: Colors.blue),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: ElevatedButton(
                              onPressed: (){
                                Get.to(()=> BookingPage());
                              },
                              child: Text('Book'),
                            )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
