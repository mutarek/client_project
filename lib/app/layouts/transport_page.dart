import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../Configs/app_settings.dart';

class TransportPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppSetting.basecolor,
        title: Text("Rent a Transport"),
        centerTitle: true,
        actions: [
          CircleAvatar(
            radius: 20, //radius is 50
            backgroundImage: NetworkImage(
                'https://cimages1.touristlink.com/repository/member/218021/tarek_edit_5701.jpg'), //image url
          ),
          SizedBox(
            width: 15,
          )
        ],
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
                        selected: true,
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
                        label: Text("Upto 30 Ton"),
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
                          child: Image.network('https://www.pngitem.com/pimgs/m/251-2510198_bd-truck-pic-png-transparent-png.png'),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0)),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                BorderRadius.circular(15)),
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
                          Text('12 Ton 6 Chaka Tata Truck', textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.0),
                          ),
                      RatingBar.builder(
                        initialRating: 4.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: AppSetting.basecolor,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on,color: AppSetting.basecolor,),
                              Text(
                                'Mohakhali Truck Terminal',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.blue),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: ElevatedButton(
                              onPressed: (){

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
                          child: Image.network('https://1.bp.blogspot.com/-y-4NY6ZG8lI/YH8VVrAYSdI/AAAAAAAADX8/W00CUEYDCHEIY6gCRZDrKgiF6gQTiwMcQCNcBGAsYHQ/s16000/APON%2BGari%2Bashok-leyland-tusker-1613H-truck-new-img1%2B%25281%2529.jpg'),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0)),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                BorderRadius.circular(15)),
                            child: Text(
                              '8000 BDT',
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
                          Text('9 Ton 6 Chaka Ashok Leyland', textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.0),
                          ),
                      RatingBar.builder(
                        initialRating: 4.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: AppSetting.basecolor,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on,color: AppSetting.basecolor,),
                              Text(
                                'Tejgaon Truck Terminal',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.blue),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: ElevatedButton(
                              onPressed: (){

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
