import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/models/enum/date_type.dart';

part 'filter_date_tools.dart';

DateTime stringToDateTime(String tod) {
  if (tod != null && tod != '') {
    final format = "yyyy-MM-dd hh:mm:ss";
    return DateFormat(format).parse(tod);
  } else {
    return null;
  }
}

TimeOfDay stringToTimeOfDay(String tod) {
  if (tod != null) {
    final format = DateFormat.Hm(); // .jm() //"6:00 AM"
    return TimeOfDay.fromDateTime(format.parse(tod));
  } else {
    return null;
  }
}

abstract class TimeTools {
  static FilterDateTools filterDateTools;
}
