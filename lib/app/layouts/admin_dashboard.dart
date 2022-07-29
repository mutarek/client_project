import 'package:client_project/app/layouts/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Configs/app_settings.dart';

class DashboardScreen extends StatelessWidget {
  List<_ChartData> data = [
  _ChartData('CHN', 12),
  _ChartData('GER', 15),
  _ChartData('RUS', 30),
  _ChartData('BRZ', 6.4),
  _ChartData('IND', 14)
  ];
  TooltipBehavior _tooltip = TooltipBehavior(enable: true);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(x: 'David', y: 25, color: Colors.white),
      ChartData(x: 'David', y: 38, color: Colors.green),
      ChartData(x: 'David', y: 34, color: Colors.red),
      ChartData(x: 'David', y: 53, color: Colors.yellow),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppSetting.basecolor,
          title: Text('Admin'),
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
                children: [
                  SfCircularChart(
                      series: <CircularSeries>[
                        // Render pie chart
                        PieSeries<ChartData, String>(
                            dataSource: chartData,
                            pointColorMapper: (ChartData data, _) => data.color,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y
                        )
                      ]
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Card(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.store_mall_directory),
                                  Text('Storage')
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Card(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.emoji_transportation,color: Colors.green,),
                                  Text('Trucks',style: TextStyle(color: Colors.green),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Card(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.verified_user_sharp),
                                  Text('Users')
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Card(
                            child: Container(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.person,color: Colors.red,),
                                    Text('Blocked',style: TextStyle(color: Colors.red),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries<_ChartData, String>>[
                        ColumnSeries<_ChartData, String>(
                            dataSource: data,
                            xValueMapper: (_ChartData data, _) => data.x,
                            yValueMapper: (_ChartData data, _) => data.y,
                            name: 'Gold',
                            color: Color.fromRGBO(8, 142, 255, 1))
                      ])
                ],
              )
          ),
        )
    );
  }
}

  class ChartData {
  ChartData({
    required this.x,
    required this.y,
    required this.color
  });
  final String x;
  final double y;
  final Color color;
  }

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}