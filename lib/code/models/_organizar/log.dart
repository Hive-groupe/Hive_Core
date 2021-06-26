class Log {
  late int? logId;
  late String callerName;
  late String callerPic;
  late String receiverName;
  late String receiverPic;
  late String callStatus;
  late String timestamp;

  Log({
    this.logId,
    required this.callerName,
    required this.callerPic,
    required this.receiverName,
    required this.receiverPic,
    required this.callStatus,
    required this.timestamp,
  });

  Log.fromMap(Map logMap) {
    this.logId = logMap["log_id"];
    this.callerName = logMap["caller_name"];
    this.callerPic = logMap["caller_pic"];
    this.receiverName = logMap["receiver_name"];
    this.receiverPic = logMap["receiver_pic"];
    this.callStatus = logMap["call_status"];
    this.timestamp = logMap["timestamp"];
  }

  // to map
  Map<String, dynamic> toMap(Log log) {
    Map<String, dynamic> logMap = Map();
    logMap["log_id"] = log.logId;
    logMap["caller_name"] = log.callerName;
    logMap["caller_pic"] = log.callerPic;
    logMap["receiver_name"] = log.receiverName;
    logMap["receiver_pic"] = log.receiverPic;
    logMap["call_status"] = log.callStatus;
    logMap["timestamp"] = log.timestamp;

    return logMap;
  }

  @override
  String toString() => '''
  $runtimeType  {
  - logId: $logId
  - callerName: $callerName
  - callerPic: $callerPic
  - receiverName: $receiverName
  - receiverPic: $receiverPic
  - callStatus: $callStatus
  - timestamp: $timestamp
  }''';
}
