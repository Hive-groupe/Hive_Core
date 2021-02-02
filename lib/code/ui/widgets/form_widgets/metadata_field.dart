import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/_revisar/metadata_field_bloc/metadata_field_bloc.dart';
import 'package:hive_core/code/ui/widgets/settings_group.dart';
import 'package:hive_core/code/utils/constants/hivre_const_icons.dart';

class MetadataField extends StatelessWidget {
  final MetadataFieldBloc commentsFormBloc;
  final String labelName;
  final String labelDescription;

  const MetadataField(
      {Key key,
      @required this.commentsFormBloc,
      this.labelName,
      this.labelDescription})
      : assert(commentsFormBloc != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildFormHolder(context);
  }

  Widget _buildFormHolder(BuildContext context) {
    return Container(
      child: SettingsGroup(
        title: 'Motivo',
        elements: [
          TextFieldBlocBuilder(
            textFieldBloc: commentsFormBloc.concept,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: labelName ??
                  'title *', //'${S.of(context).bill_form_holder_concept} *',
              prefixIcon: Icon(Icons.text_fields), isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          TextFieldBlocBuilder(
            textFieldBloc: commentsFormBloc.observations,
            keyboardType: TextInputType.multiline,
            minLines: 3, //Normal textInputField will be displayed
            maxLines: 5, // when user presses enter it will adapt to it
            decoration: InputDecoration(
              labelText: labelDescription ??
                  'Observations', //'${S.of(context).bill_form_holder_concept}',
              prefixIcon: Icon(HiveCoreConstIconData.text),
              isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),
            ),
          ),
        ],
      ),
    );
  }
}
