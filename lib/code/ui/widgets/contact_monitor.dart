import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/code/models/_index.dart';
import 'package:hive_core/code/utils/constants/hive_const_text_style.dart';
import 'package:hive_core/code/utils/tools/web_tools.dart';

class ContactMonitor extends StatefulWidget {
  final ContactInformation model;

  ContactMonitor({@required this.model}) : super();

  @override
  _ContactMonitorState createState() => _ContactMonitorState();
}

class _ContactMonitorState extends State<ContactMonitor> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onTapOnPhoneItem(String value) => WebTools.launchPhone(value: value);

  void _onTapOnMailItem(String value) => WebTools.launchMail(value: value);

  void _onTapOnAddressItem() {
    print('_onTapOnAddressItem');
  }

  void _onTapOnLinkedinItem(String value) {
    WebTools.launchURL('https://linkeding.com/$value');
  }

  void _onTapOnGithubItem(String value) {
    WebTools.launchURL('https://github.com/$value');
  }

  void _onTapOnFacebookItem(String value) {
    WebTools.launchURL('https://www.facebook.com/$value');
  }

  void _onTapOnInstagramItem(String value) {
    WebTools.launchURL('https://instagram.com/$value');
  }

  void _onTapOnTwitterItem(String value) {
    WebTools.launchURL('https://twitter.com/$value');
  }

  @override
  Widget build(BuildContext context) {
    return _build();
  }

  Widget _build() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          _titleHolder(),
          _generalList(
              showDivider: false,
              icon: CupertinoIcons.phone,
              list: widget.model.phones,
              onTap: _onTapOnPhoneItem),
          _generalList(
              icon: CupertinoIcons.mail,
              list: widget.model.mails,
              onTap: _onTapOnMailItem),
          _addressList(),
          _generalList(
              icon: FontAwesomeIcons.linkedin,
              list: widget.model.linkedin,
              onTap: _onTapOnLinkedinItem),
          _generalList(
              icon: FontAwesomeIcons.github,
              list: widget.model.github,
              onTap: _onTapOnGithubItem),
          _generalList(
              icon: FontAwesomeIcons.facebook,
              list: widget.model.facebook,
              onTap: _onTapOnFacebookItem),
          _generalList(
              icon: FontAwesomeIcons.instagram,
              list: widget.model.instagram,
              onTap: _onTapOnInstagramItem),
          _generalList(
              icon: FontAwesomeIcons.twitter,
              list: widget.model.twitter,
              onTap: _onTapOnTwitterItem),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        child: Divider(
          color: Colors.grey,
        ));
  }

  Widget _titleHolder() {
    return Container(
      child: Text(
        S.of(context).social_form_title,
        style: HiveCoreConstTextStyle.form_title,
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _generalList(
      {BuiltList list, IconData icon, Function onTap, bool showDivider}) {
    bool _showDivider = showDivider != null
        ? showDivider
        : list.length > 0
            ? true
            : false;
    return Container(
        child: list != null
            ? Container(
                child: Column(
                  children: <Widget>[
                    _showDivider ? _divider() : Container(),
                    Column(
                      children: List.generate(
                          list.length,
                          (index) => _generalItem(
                                icon: index == 0 ? icon : null,
                                model: list[index],
                                onTap: onTap,
                              )).toList(),
                    )
                  ],
                ),
              )
            : Container());
  }

  Widget _generalItem(
      {ContactInformationValue model, IconData icon, Function onTap}) {
    return GestureDetector(
      onTap: () => onTap(model.value),
      child: Container(
        child: ListTile(
          leading: icon != null
              ? Container(
                  child: Icon(
                  icon,
                ))
              : SizedBox(
                  width: 5,
                ),
          title: Container(
            child: Text(model.label ?? ''),
          ),
          subtitle: Container(
            child: Text(model.value ?? ''),
          ),
          trailing: Container(
            child: Icon(Icons.navigate_next),
          ),
        ),
      ),
    );
  }

  Widget _addressList({bool showDivider}) {
    BuiltList list = widget.model.addresses;
    bool _showDivider = showDivider != null
        ? showDivider
        : list.length > 0
            ? true
            : false;
    return Container(
        child: list != null
            ? Container(
                child: Column(
                  children: <Widget>[
                    _showDivider ? _divider() : Container(),
                    Column(
                      children: List.generate(
                          list.length,
                          (index) => _addressItem(
                                icon:
                                    index == 0 ? CupertinoIcons.location : null,
                                model: list[index],
                                onTap: _onTapOnAddressItem,
                              )).toList(),
                    )
                  ],
                ),
              )
            : Container());
  }

  Widget _addressItem({Address model, IconData icon, Function onTap}) {
    return GestureDetector(
      onTap: _onTapOnAddressItem,
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: ListTile(
          leading: icon != null
              ? Container(child: Icon(icon))
              : SizedBox(
                  width: 5,
                ),
          title: Container(
            child: Text(model.label ?? ''), // model.label),
          ),
          subtitle: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text('${model.street} '
                      '${model.number != null ? 'Nº${model.number ?? ''}' : ''} '
                      '${model.floor ?? ''} '
                      '${model.door ?? ''}'),
                ),
                Container(
                  child: Text('${model.city ?? ''}, ${model.province ?? ''}'),
                ),
                Container(
                  child: Text(model.country ?? ''),
                )
              ],
            ),
          ),
          trailing: Container(
            child: Icon(Icons.navigate_next),
          ),
        ),
      ),
    );
  }
}
