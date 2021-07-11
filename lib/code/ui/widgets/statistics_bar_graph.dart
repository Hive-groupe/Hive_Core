import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

class StatisticsBarGraph extends StatefulWidget {
  final List<num> data;

  const StatisticsBarGraph({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  _StatisticsBarGraphState createState() => _StatisticsBarGraphState();
}

class _StatisticsBarGraphState extends State<StatisticsBarGraph> {
  _onSelectionChanged(SelectionModel model) {
    final selectedDatum = model.selectedDatum;

    var time;
    final measures = <String, double>{};

    // We get the model that updated with a list of [SeriesDatum] which is
    // simply a pair of series & datum.
    //
    // Walk the selection updating the measures map, storing off the sales and
    // series name for each selection point.
    if (selectedDatum.isNotEmpty) {
      time = selectedDatum.first.datum;
      selectedDatum.forEach((SeriesDatum datumPair) {
        measures[datumPair.series.displayName!] = datumPair.datum;
      });
    }

    print(time);
    print(measures);

    // Request a build.
    //setState(() {
    //_time = time;
    //_measures = measures;
    //});
  }

  @override
  Widget build(BuildContext context) {
    List<Series<num, num>> series = [
      Series<num, int>(
        id: 'Gasto',
        colorFn: (_, __) => MaterialPalette.deepOrange
            .shadeDefault, //MaterialPalette.purple.shadeDefault, //MaterialPalette.blue.shadeDefault,
        domainFn: (value, index) => index!,
        measureFn: (value, _) => value,
        data: widget.data,
        strokeWidthPxFn: (_, __) => 2,
      )
    ];

    return LineChart(
      series,
      animate: true,
      selectionModels: [
        SelectionModelConfig(
          type: SelectionModelType.info,
          changedListener: _onSelectionChanged,
        )
      ],
      domainAxis: NumericAxisSpec(
        tickProviderSpec: StaticNumericTickProviderSpec([
          TickSpec(0, label: '01'),
          TickSpec(4, label: '05'),
          TickSpec(9, label: '10'),
          TickSpec(14, label: '15'),
          TickSpec(19, label: '20'),
          TickSpec(24, label: '25'),
          TickSpec(29, label: '30'),
        ]),
      ),
      primaryMeasureAxis: NumericAxisSpec(
        tickProviderSpec: BasicNumericTickProviderSpec(
          desiredTickCount: 3,
        ),
      ),
    );
  }
}
