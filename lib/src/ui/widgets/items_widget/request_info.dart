import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/src/utils/constants/const_colors.dart';
import 'package:hive_core/src/controllers/cubits/request_cubit/request_cubit.dart';
import 'package:hive_core/src/models/business.dart';
import 'package:hive_core/src/models/project.dart';
import 'package:hive_core/src/models/request.dart';

class RequestInfo extends StatefulWidget {
  const RequestInfo();

  @override
  _RequestInfoState createState() => _RequestInfoState();
}

class _RequestInfoState extends State<RequestInfo> {
  RequestCubit _requestCubit;

  @override
  void initState() {
    _requestCubit = context.bloc<RequestCubit>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      cubit: _requestCubit,
      listener: (context, state) {},
      builder: (context, state) {
        if (state is RequestInitial) {
          return Container();
        } else if (state is RequestReady) {
          return _buildHolder(state);
        } else {
          return Container();
        }
      },
    );
  }

  Widget _buildHolder(RequestReady state) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _divider(),
          _businessNameHolder(state),
          _projectHolder(state),
          _projectItoHolder(state),
          SizedBox(
            height: 20,
          ),
          _businessRequestedHolder(state),
          SizedBox(
            height: 10,
          ),
          _businessChargedHolder(state),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50, top: 15, bottom: 15),
      child: Divider(
        color: HiveCoreConstColors.greyColor,
      ),
    );
  }

  Widget _businessNameHolder(RequestReady state) {
    return StreamBuilder<Business>(
        stream: state.business,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              child: Text('${snapshot.data.metadata.title}'),
            );
          } else {
            return Container();
          }
        });
  }

  Widget _projectHolder(RequestReady state) {
    return StreamBuilder<Project>(
        stream: state.project,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              child: Text('${snapshot.data.metadata.title}'),
            );
          } else {
            return Container();
          }
        });
  }

  Widget _projectItoHolder(RequestReady state) {
    return StreamBuilder<Project>(
        stream: state.project,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              child: Text('${snapshot.data.metadata.title}'),
            );
          } else {
            return Container();
          }
        });
  }

  Widget _businessRequestedHolder(RequestReady state) {
    return StreamBuilder<Request>(
        stream: state.request,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  snapshot.data.applicationDate != null
                      ? Container(
                          child: Text(
                          'Solicitado',
                          style: TextStyle(color: Colors.green),
                        ))
                      : Container(
                          child: Text(
                            'No solicitado',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                  snapshot.data.applicationDate != null
                      ? Container(
                          child: Text(
                              '${snapshot.data.applicationDate != null ? DateFormat("yMd").format(DateFormat("yyyy-MM-dd hh:mm:ss").parse(snapshot.data.applicationDate)) : ''}'),
                        )
                      : Container(
                          child: OutlineButton(
                              onPressed: state.onRequested,
                              child: new Text(
                                "Registrar",
                                style: TextStyle(
                                  color: HiveCoreConstColors.greyColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0))),
                        )
                ]));
          } else {
            return Container();
          }
        });
  }

  Widget _businessChargedHolder(RequestReady state) {
    return StreamBuilder<Request>(
        stream: state.request,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Container(
                    child: snapshot.data.paymentDate != null
                        ? Container(
                            child: Text('Cobrado',
                                style: TextStyle(color: Colors.green)),
                          )
                        : Container(
                            child: Text(
                              'No cobrado',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                  ),
                  snapshot.data.paymentDate != null
                      ? Container(
                          child: Text(
                              '${snapshot.data.paymentDate != null ? DateFormat("yMd").format(DateFormat("yyyy-MM-dd hh:mm:ss").parse(snapshot.data.paymentDate)) : ''}'),
                        )
                      : Container(
                          child: OutlineButton(
                              onPressed: state.onCharged,
                              child: new Text(
                                "Registrar",
                                style: TextStyle(
                                  color: HiveCoreConstColors.greyColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0))),
                        )
                ]));
          } else {
            return Container();
          }
        });
  }
}
