import 'package:flutter/material.dart';

import '../Configs/app_settings.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppSetting.basecolor,
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 100, //radius is 50
                  backgroundImage: NetworkImage(
                      'https://cimages1.touristlink.com/repository/member/218021/tarek_edit_5701.jpg'), //image url
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Name: M Tarek',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Join: 01/02/2020', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('My Storage:',style: TextStyle(fontSize: 25),),
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                color: AppSetting.basecolor,
                child: ListTile(
                  onTap: (){

                  },
                  title: Text(
                    '2000 Sqft Rent',
                    textScaleFactor: 1.2,
                  ),
                  subtitle: Text('Keraninggong Dhaka'),
                  trailing: Text('Rent'),
                  leading: CircleAvatar(
                    child: Icon(Icons.arrow_forward_rounded),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                color: AppSetting.basecolor,
                child: ListTile(
                  onTap: (){

                  },
                  title: Text(
                    '4000 Sqft Rent',
                    textScaleFactor: 1.2,
                  ),
                  subtitle: Text('Gulshan Dhaka'),
                  trailing: Text('To-let'),
                  leading: CircleAvatar(
                    child: Icon(Icons.arrow_forward_rounded),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                color: AppSetting.basecolor,
                child: ListTile(
                  onTap: (){

                  },
                  title: Text(
                    '10000 Sqft Rent',
                    textScaleFactor: 1.2,
                  ),
                  subtitle: Text('Rampura,Dhaka'),
                  trailing: Text('Rent'),
                  leading: CircleAvatar(
                    child: Icon(Icons.arrow_forward_rounded),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('Address:',style: TextStyle(fontSize: 25),),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('512 Noyatola , Moghbazar ,Ramna Dhaka',style: TextStyle(fontSize: 20),),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('Payment Info:',style: TextStyle(fontSize: 25),),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card( child: Padding(
                      padding:EdgeInsets.all(5),child: Text('Bkash',style: TextStyle(fontSize: 15)))),
                  Card( child: Padding(
                      padding:EdgeInsets.all(5),child: Text('Nagad',style: TextStyle(fontSize: 15)))),
                  Card( child: Padding(
                      padding:EdgeInsets.all(5),child: Text('Visa',style: TextStyle(fontSize: 15)))),
                  Card( child: Padding(
                      padding:EdgeInsets.all(5),child: Text('Bank',style: TextStyle(fontSize: 15)))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
