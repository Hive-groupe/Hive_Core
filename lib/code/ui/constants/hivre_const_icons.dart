import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class HiveCoreConstIconData {
  static const IconData search = CupertinoIcons.search;
  static const IconData share = CupertinoIcons.share;
  static const IconData copy = Icons.copy_outlined;
  static const IconData text = Icons.text_fields;

  static const IconData back = CupertinoIcons.back;
  static const IconData next = CupertinoIcons.chevron_right;
  static const IconData settings = Icons.more_vert;
  static const IconData filter =
      CupertinoIcons.slider_horizontal_3; // Icons.filter_list,
  static const IconData calendar =
      Icons.calendar_today_outlined; // CupertinoIcons.calendar_today,
  static const IconData table = CupertinoIcons.table;

  static const IconData bill = Icons.receipt;
  static const IconData business = Icons.business;
  static const IconData contract = Icons.chrome_reader_mode;
  static const IconData hours = Icons.calendar_today;
  static const IconData km =
      Icons.directions_car; //  CupertinoIcons.car_detailed
  static const IconData payroll = Icons.timeline;
  static const IconData project = Icons.work;
  static const IconData plus = Icons.control_point_duplicate;
  static const IconData work_calendar = Icons.event;
  static const IconData work_shift = Icons.access_time;
}

abstract class HiveCoreConstIcons {
  static const Icon btnBack = Icon(
    HiveCoreConstIconData.back,
    color: Colors.grey,
    // size: 18,
  );

  static const Icon btnNext = Icon(
    HiveCoreConstIconData.next,
    color: Colors.grey,
    // size: 18,
  );
  static const Icon btnSettings = Icon(
    HiveCoreConstIconData.settings,
    color: Colors.grey,
    // size: 18,
  );

  static const Icon btnCopy = Icon(
    HiveCoreConstIconData.copy,
    color: Colors.grey,
    // size: 18,
  );

  static const Icon btnTable = Icon(
    HiveCoreConstIconData.table,
    color: Colors.grey,
    // size: 18,
  );

  static const Icon btnFilter = Icon(
    HiveCoreConstIconData.filter,
    color: Colors.grey,
  );

  static const Icon btnFilterByDayIcon = Icon(
    HiveCoreConstIconData.calendar,
    color: Colors.grey,
  );
}
