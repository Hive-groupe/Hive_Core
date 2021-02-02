part of 'time_tools.dart';

abstract class FilterDateTools {
  static final num numYears = 10;

  static final selected = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.white, //Theme.of(context).textTheme.title.color
  );
  static final unselected = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.normal,
    color: Colors.grey.withOpacity(0.3),
  );

  static String getDateFormat({@required DateType dateType}) {
    switch (dateType) {
      case DateType.DAY:
        return 'dd MMMM yyyy';
        break;
      case DateType.WEEKS:
        return '';
        break;
      case DateType.MONTHS:
        return 'MMMM yyyy';
        break;
      case DateType.QUARTERS:
        return '';
        break;
      case DateType.YEARS:
        return 'yyyy';
        break;
      case DateType.ALL:
        return '';
        break;
      default:
        return 'MMMM yyyy';
    }
  }

  static DateTime getNextDateTimeItem(
      {@required DateType currentDateType, @required num nextPage}) {
    switch (currentDateType) {
      case DateType.YEARS:
        return DateTime(DateTime.now().year + nextPage - numYears,
            DateTime.now().month, DateTime.now().day);
        break;
      case DateType.MONTHS:
        return DateTime(DateTime.now().year, nextPage + 1, DateTime.now().day);
        break;
      case DateType.DAY:
        return DateTime(
            DateTime.now().year, DateTime.now().month, nextPage + 1);
        break;
      default:
        return DateTime.now();
    }
  }

  static TextStyle getItemTextStyle(
      {@required DateType currentDateType,
      @required DateTime dateTime,
      @required int itemIndex}) {
    bool _condition = false;
    switch (currentDateType) {
      case DateType.YEARS:
        _condition =
            DateTime.now().year + itemIndex - numYears == dateTime.year;
        break;
      case DateType.QUARTERS:
        _condition = itemIndex == dateTime.month - 1;
        break;
      case DateType.MONTHS:
        _condition = itemIndex == dateTime.month - 1;
        break;
      case DateType.WEEKS:
        _condition = itemIndex == dateTime.day - 1;
        break;
      case DateType.DAY:
        _condition = itemIndex == dateTime.day - 1;
        break;
      default:
        _condition = false;
    }
    return _condition ? selected : unselected;
  }

  static Alignment getItemAlignment(
      {@required DateType currentDateType,
      @required DateTime dateTime,
      @required int itemIndex}) {
    switch (currentDateType) {
      case DateType.YEARS:
        if (DateTime.now().year + itemIndex - numYears == dateTime.year) {
          return Alignment.bottomCenter;
        } else if (DateTime.now().year + itemIndex - numYears > dateTime.year) {
          return Alignment.bottomRight;
        } else {
          return Alignment.bottomLeft;
        }
        break;
      case DateType.QUARTERS:
        if (itemIndex == dateTime.month - 1) {
          return Alignment.bottomCenter;
        } else if (itemIndex > dateTime.month - 1) {
          return Alignment.bottomRight;
        } else {
          return Alignment.bottomLeft;
        }
        break;
      case DateType.MONTHS:
        if (itemIndex == dateTime.month - 1) {
          return Alignment.bottomCenter;
        } else if (itemIndex > dateTime.month - 1) {
          return Alignment.bottomRight;
        } else {
          return Alignment.bottomLeft;
        }
        break;
      case DateType.WEEKS:
        if (itemIndex == dateTime.day - 1) {
          return Alignment.bottomCenter;
        } else if (itemIndex > dateTime.day - 1) {
          return Alignment.bottomRight;
        } else {
          return Alignment.bottomLeft;
        }
        break;
      case DateType.DAY:
        if (itemIndex == dateTime.day - 1) {
          return Alignment.bottomCenter;
        } else if (itemIndex > dateTime.day - 1) {
          return Alignment.bottomRight;
        } else {
          return Alignment.bottomLeft;
        }
        break;
      default:
        return Alignment.bottomLeft;
    }
  }
}
