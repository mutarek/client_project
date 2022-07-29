import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Configs/app_settings.dart';
import '../datas/dummydata.dart';
import 'warehouse_management.dart';

class WareHouseListPage extends StatelessWidget {
  final List<Map<String, dynamic>> allproducts = warehouseList;
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppSetting.basecolor,
        title: Text("List of Warehouse"),
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
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on,color: Colors.white,size: 50,),
              Text("Jatrabari",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50)
                  ),
                  color: AppSetting.basecolor
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: allproducts.length,
                    itemBuilder: (_,index){
                      return Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Opacity(
                          opacity: 1,
                          child: Transform.translate(
                            offset: const Offset(
                                0,2
                            ),
                            child: InkWell(
                              onTap: (){
                                Get.to(()=>WareHouseManagement());
                              },
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(_w/20, _w/20, _w/20, 0),
                                padding: EdgeInsets.all(_w/20),
                                height: _w/4.4,
                                width: _w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(.4),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.blue.withOpacity(.1),
                                      radius: _w/15,
                                      child: Text(allproducts[index]['warehouse_name'][0],style: TextStyle(color: Colors.black),),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      width: _w/2,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(allproducts[index]['warehouse_name'],
                                            textScaleFactor: 1.6,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black.withOpacity(.7)
                                            ),),
                                          Text("Production: "+allproducts[index]['production'],
                                            textScaleFactor: 1.2,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black.withOpacity(.9)
                                            ),)
                                        ],
                                      ),
                                    ),
                                    Icon(Icons.navigate_next_outlined)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              )
          )
        ],
      ),
    );
  }
}
