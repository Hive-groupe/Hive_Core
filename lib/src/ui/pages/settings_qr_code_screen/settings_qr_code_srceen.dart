import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/src/controllers/blocs/settings_qr_code_bloc/settings_qr_code_bloc.dart';
import 'package:hive_core/src/utils/constants/const_icons.dart';

import 'widgets/my_qr_code.dart';
import 'widgets/qr_recognition.dart';

class SettingsQrCodeScreen extends StatefulWidget {
  @override
  _SettingsQrCodeScreenState createState() => _SettingsQrCodeScreenState();
}

class _SettingsQrCodeScreenState extends State<SettingsQrCodeScreen>
    with SingleTickerProviderStateMixin {
  SettingsQrCodeBloc _settingsQrCodeBloc;

  TabController _tabController;
  List<Tab> _tabs;

  @override
  void initState() {
    _settingsQrCodeBloc = SettingsQrCodeBloc();

    _tabs = [
      new Tab(
        text: 'Mi código', //S.of(context).monitor,
      ),
      new Tab(
        text: 'Escanear código', //S.of(context).record,
      ),
    ];

    _tabController = TabController(
      vsync: this,
      length: _tabs.length,
    );

    super.initState();
  }

  @override
  void dispose() {
    _settingsQrCodeBloc?.close();
    super.dispose();
  }

  _onShowMenu() {
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            //title: Text('Actions'),
            //message: Text('mensage'),
            /*cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(StringConstant.cancel),
              isDestructiveAction: true,
            ),*/
            actions: <Widget>[
              CupertinoActionSheetAction(
                onPressed: () => _onCreateData(),
                child: Text('Restablecer código QR'
                    //S.of(context).aaaaaa
                    ),
              ),
            ],
          );
        });
  }

  void _goBack() => Navigator.pop(context);

  void _onCreateData() {
    _goBack();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsQrCodeBloc>(
          create: (BuildContext context) => _settingsQrCodeBloc,
        ),
      ],
      child: BlocConsumer(
        cubit: _settingsQrCodeBloc,
        listener: (context, state) {},
        builder: (context, state) {
          return _build();
        },
      ),
    );
  }

  Widget _build() {
    return Scaffold(
      appBar: _appBar(title: 'Código QR' //S.of(context).bill_list_title,
          ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        _myCodeBuild(),
        QrRecognition(),
      ]),
    );
  }

  AppBar _appBar({@required String title}) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).textTheme.bodyText1.color,
            fontWeight: FontWeight.w600),
      ),
      leading: IconButton(
        onPressed: _goBack,
        icon: ConstIcons.btnBack,
      ),
      actions: <Widget>[_btnShare(), _btnOptions()],
      bottom: TabBar(
        controller: _tabController,
        tabs: _tabs,
        indicatorPadding: EdgeInsets.only(left: 25, right: 25),
        labelColor: Theme.of(context).textTheme.bodyText1.color,
        unselectedLabelColor: Colors.grey,
      ),
    );
  }

  Widget _myCodeBuild() {
    return SingleChildScrollView(
        child: Container(
      margin: EdgeInsets.only(top: 100, bottom: 75),
      child: Column(
        children: <Widget>[
          MyQrCode(),
          Container(
            width: 300,
            child: Text(
              'Tus amigos pueden escanear este codigo para encontrar tu perfil',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    ));
  }

  Widget _btnShare() {
    return Container(
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          ConstIconData.share,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget _btnOptions() {
    return Container(
      child: IconButton(onPressed: _onShowMenu, icon: ConstIcons.btnSettings),
    );
  }
}
