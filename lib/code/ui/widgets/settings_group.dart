import 'package:flutter/cupertino.dart';

class SettingsGroup extends StatelessWidget {
  final String title;
  final List<Widget> elements;

  const SettingsGroup({Key? key, required this.title, required this.elements})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleGroup(),
          Column(
            children: elements,
          )
        ],
      ),
    );
  }

  _titleGroup() {
    return Container(
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
