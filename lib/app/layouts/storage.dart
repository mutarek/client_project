import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Configs/app_settings.dart';

class Storage extends StatelessWidget {

  List<Map<String,dynamic>> dummyproduct = [
    {
      'p_name': "Stand Fan",
      'p_price':'1200 Tk',
      'p_category':'Electric',
      'p_image':'http://atlas-content-cdn.pixelsquid.com/stock-images/standing-fan-table-4oV27zC-600.jpg'
    },
    {
      'p_name': "Fridge",
      'p_price':'12000 Tk',
      'p_category':'Electric',
      'p_image':'https://www.pngmart.com/files/21/Double-Door-Fridge-PNG-File.png'
    },
    {
      'p_name': "White Bulb",
      'p_price':'200 Tk',
      'p_category':'Electric',
      'p_image':'http://atlas-content-cdn.pixelsquid.com/stock-images/led-light-bulb-lightbulb-QJD58r7-600.jpg'
    },
    {
      'p_name': "2h Motor",
      'p_price':'8000 Tk',
      'p_category':'Electric',
      'p_image':'http://atlas-content-cdn.pixelsquid.com/stock-images/electric-motor-Va7vAQ3-600.jpg'
    },
    {
      'p_name': "Tata AC",
      'p_price':'3000 Tk',
      'p_category':'Electric',
      'p_image':'https://www.pngmart.com/files/21/AC-PNG-Image.png'
    },
    {
      'p_name': "Fridge",
      'p_price':'12000 Tk',
      'p_category':'Electric',
      'p_image':'https://www.pngmart.com/files/21/Double-Door-Fridge-PNG-File.png'
    },

    {
      'p_name': "Stand Fan",
      'p_price':'1200 Tk',
      'p_category':'Electric',
      'p_image':'http://atlas-content-cdn.pixelsquid.com/stock-images/standing-fan-table-4oV27zC-600.jpg'
    },
    {
      'p_name': "Fridge",
      'p_price':'12000 Tk',
      'p_category':'Electric',
      'p_image':'https://www.pngmart.com/files/21/Double-Door-Fridge-PNG-File.png'
    },
    {
      'p_name': "White Bulb",
      'p_price':'200 Tk',
      'p_category':'Electric',
      'p_image':'http://atlas-content-cdn.pixelsquid.com/stock-images/led-light-bulb-lightbulb-QJD58r7-600.jpg'
    },
    {
      'p_name': "2h Motor",
      'p_price':'8000 Tk',
      'p_category':'Electric',
      'p_image':'http://atlas-content-cdn.pixelsquid.com/stock-images/electric-motor-Va7vAQ3-600.jpg'
    },
    {
      'p_name': "Tata AC",
      'p_price':'3000 Tk',
      'p_category':'Electric',
      'p_image':'https://www.pngmart.com/files/21/AC-PNG-Image.png'
    },
    {
      'p_name': "Fridge",
      'p_price':'12000 Tk',
      'p_category':'Electric',
      'p_image':'https://www.pngmart.com/files/21/Double-Door-Fridge-PNG-File.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppSetting.basecolor,
        title: Text('My Storage'),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: (){

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
            Expanded(
              child: GridView.builder(
                  itemCount: dummyproduct.length,
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5
                  ),
                  itemBuilder: (_,index){
                    return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(color: Colors.white10, blurRadius: 15, spreadRadius: 10),
                          ],
                        ),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Positioned(
                                left: 0,
                                top: 0,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.favorite_border,color: Colors.red,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  SizedBox(height: 5),
                                  Expanded(
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 40,
                                          backgroundColor: Colors.orange.withAlpha(40),
                                        ),
                                        Image.network(dummyproduct[index]['p_image'])
                                      ],
                                    ),
                                  ),
                                  //SizedBox(height: 5),
                                  Text(dummyproduct[index]['p_name'],style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                  Text(dummyproduct[index]['p_category'],style: TextStyle(fontSize: 12,color: Colors.orange),),
                                  //Text(dummyproduct[index]['p_price'],style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),

                                ],
                              ),
                            ],
                          ),
                        )
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
