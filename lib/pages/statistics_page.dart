import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class StatisticsPage extends StatelessWidget {
  StatisticsPage({Key? key}) : super(key: key);

  Map<String, double> dataMap = {
    "Concluido": 50,
    "Faltante": 50,
  };

  List<Color> colorList = [
    const Color(0xffD95AF3),
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFA4A42),
    const Color(0xffFE9539)
  ];

  final gradientList = <List<Color>>[
    [
      Color.fromARGB(255, 92, 181, 254),
      Color.fromARGB(255, 92, 181, 254),
    ],
    [
      Color.fromARGB(255, 0, 8, 255),
      Color.fromARGB(255, 0, 8, 255),
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estatisticas'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            PieChart(
              initialAngleInDegree: 90,
              dataMap: dataMap,
              colorList: colorList,
              chartRadius: MediaQuery.of(context).size.width / 4,
              ringStrokeWidth: 24,
              centerText: 'Grupo 1',
              animationDuration: const Duration(seconds: 3),
              chartValuesOptions: const ChartValuesOptions(
                  showChartValues: true,
                  showChartValuesOutside: true,
                  showChartValuesInPercentage: true,
                  showChartValueBackground: true),
              gradientList: gradientList,
            ),
            PieChart(
              initialAngleInDegree: 90,
              dataMap: dataMap,
              colorList: colorList,
              chartRadius: MediaQuery.of(context).size.width / 4,
              ringStrokeWidth: 24,
              centerText: 'Grupo 2',
              animationDuration: const Duration(seconds: 3),
              chartValuesOptions: const ChartValuesOptions(
                  showChartValues: true,
                  showChartValuesOutside: true,
                  showChartValuesInPercentage: true,
                  showChartValueBackground: true),
              gradientList: gradientList,
            ),
            PieChart(
              initialAngleInDegree: 90,
              dataMap: dataMap,
              colorList: colorList,
              chartRadius: MediaQuery.of(context).size.width / 4,
              ringStrokeWidth: 24,
              centerText: 'Grupo 3',
              animationDuration: const Duration(seconds: 3),
              chartValuesOptions: const ChartValuesOptions(
                  showChartValues: true,
                  showChartValuesOutside: true,
                  showChartValuesInPercentage: true,
                  showChartValueBackground: true),
              gradientList: gradientList,
            ),
          ],
        ),
      ),
    );
  }
}
