import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Configs/app_settings.dart';

class WareHouseManagement extends StatelessWidget {
  late int count;
  ChartSeriesController? _chartSeriesController;

  List<_ChartData> chartData = <_ChartData>[
    _ChartData(0, 42),
    _ChartData(1, 47),
    _ChartData(2, 33),
    _ChartData(3, 49),
    _ChartData(4, 54),
    _ChartData(5, 41),
    _ChartData(6, 58),
    _ChartData(7, 51),
    _ChartData(8, 98),
    _ChartData(9, 41),
    _ChartData(10, 53),
    _ChartData(11, 72),
    _ChartData(12, 86),
    _ChartData(13, 52),
    _ChartData(14, 94),
    _ChartData(15, 92),
    _ChartData(16, 86),
    _ChartData(17, 72),
    _ChartData(18, 94),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppSetting.basecolor,
        title: Text("Warehouse Management"),
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
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  title: ChartTitle(text: '6 Month production analysis'),
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                        dataSource: <SalesData>[
                          SalesData('Jan', 35),
                          SalesData('Feb', 28),
                          SalesData('Mar', 34),
                          SalesData('Apr', 32),
                          SalesData('May', 40)
                        ],
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        // Enable data label
                        dataLabelSettings: DataLabelSettings(isVisible: true))
                  ]),
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
                              Icon(Icons.person),
                              Text('Empoloyer')
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
                              Icon(Icons.local_activity,color: Colors.green,),
                              Text('Presents',style: TextStyle(color: Colors.green),)
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
                              Icon(Icons.power),
                              Text('Switch')
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
                                Icon(Icons.lock_clock,color: Colors.red,),
                                Text('Shut Down',style: TextStyle(color: Colors.red),)
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
                  plotAreaBorderWidth: 0,
                  title: ChartTitle(text: 'Todays Production Status'),
                  primaryXAxis: NumericAxis(
                      majorGridLines: const MajorGridLines(width: 0)),
                  primaryYAxis: NumericAxis(
                      axisLine: const AxisLine(width: 0),
                      majorTickLines: const MajorTickLines(size: 0)),
                  series: <LineSeries<_ChartData, int>>[
                    LineSeries<_ChartData, int>(
                      onRendererCreated: (ChartSeriesController controller) {
                        _chartSeriesController = controller;
                      },
                      dataSource: chartData!,
                      color: const Color.fromRGBO(192, 108, 132, 1),
                      xValueMapper: (_ChartData sales, _) => sales.country,
                      yValueMapper: (_ChartData sales, _) => sales.sales,
                      animationDuration: 0,
                    )
                  ])
            ],
          ),
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class _ChartData {
  _ChartData(this.country, this.sales);

  final int country;
  final num sales;
}
