import 'package:cloud_firestore/cloud_firestore.dart';

class ChatContact {
  late String uid;
  late Timestamp addedOn;

  ChatContact({
    required this.uid,
    required this.addedOn,
  });

  ChatContact.fromJson(
    Map<String, dynamic> mapData,
  ) {
    this.uid = mapData['contact_id'];
    this.addedOn = mapData["added_on"];
  }

  Map toMap(
    ChatContact contact,
  ) {
    var data = Map<String, dynamic>();
    data['contact_id'] = contact.uid;
    data['added_on'] = contact.addedOn;
    return data;
  }
}
