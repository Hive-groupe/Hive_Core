import 'package:cloud_firestore/cloud_firestore.dart';

class ChatContact {
  String uid;
  Timestamp addedOn;

  ChatContact({
    this.uid,
    this.addedOn,
  });

  Map toMap(ChatContact contact) {
    var data = Map<String, dynamic>();
    data['contact_id'] = contact.uid;
    data['added_on'] = contact.addedOn;
    return data;
  }

  ChatContact.fromJson(Map<String, dynamic> mapData) {
    this.uid = mapData['contact_id'];
    this.addedOn = mapData["added_on"];
  }
}
