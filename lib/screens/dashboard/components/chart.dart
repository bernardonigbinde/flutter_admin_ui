import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90,
              centerSpaceRadius: 70,
              sectionsSpace: 0,
              sections: [
                PieChartSectionData(color: Colors.blue, value: 10, showTitle: false, radius: 25),
                PieChartSectionData(color: Colors.cyanAccent, value: 10, showTitle: false, radius: 21),
                PieChartSectionData(color: Colors.yellow, value: 10, showTitle: false, radius: 19),
                PieChartSectionData(color: Colors.red, value: 10, showTitle: false, radius: 16),
                PieChartSectionData(color: Colors.white.withOpacity(0.1), value: 10, showTitle: false, radius: 13),
              ],
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: defaultPadding,),
                Text(
                  '29.1',
                  style: Theme.of(context).textTheme.headlineMedium.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                Text('of 128GB'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
