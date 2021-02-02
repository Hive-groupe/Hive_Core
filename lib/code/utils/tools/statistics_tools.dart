import 'package:hive_core/code/models/_index.dart';

class StatisticsTools {
  double getMinimum(List<dynamic> list) =>
      list.fold(10000000000000000000, (a, b) => a < b ? a : b);

  double getAverage(List<dynamic> list) =>
      list.length != 0 ? list.fold(0.0, (a, b) => a + b) / list.length : 0;

  double getMaximum(List<dynamic> list) =>
      list.fold(0.0, (a, b) => a > b ? a : b);

  num getTotalAmount(List<dynamic> list) {
    num _sum = 0;

    list.forEach((doc) {
      _sum = _sum + doc;
    });

    return _sum;
  }

  double getFinalDiference(List<dynamic> list) =>
      list.length > 1 ? list[0] - list[list.length - 1] : 0;

  List<dynamic> getDiferenceList(List<dynamic> list) {
    List<dynamic> diferenceList = new List<dynamic>();
    for (var i = 0; i < list.length - 1; i++) {
      List l = [
        list[i],
        list[i + 1],
      ];
      diferenceList.add(getFinalDiference(l));
    }
    return diferenceList;
  }

  BasicStatistics getBasicStatistics(List<dynamic> list,
      {List<dynamic> diferenceList}) {
    diferenceList = diferenceList ?? getDiferenceList(list);
    return BasicStatistics((b) => b
      ..length = list.length
      ..totalAmount = getTotalAmount(list)
      ..finalDiference = getFinalDiference(list)
      ..minimumValue = getMinimum(list)
      ..averageValue = getAverage(list)
      ..maximumValue = getMaximum(list)
      ..minimumDifference = getMinimum(diferenceList)
      ..averageDifference = getAverage(diferenceList)
      ..maximumDifference = getMaximum(diferenceList));
  }
}
