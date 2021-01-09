import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:hive_core/generated/l10n.dart';
import 'package:hive_core/src/controllers/blocs/preferences_bloc/preferences_bloc.dart';
import 'package:hive_core/src/ui/widgets/expansion_list_card.dart';

class SettingsLocaleForm extends StatefulWidget {
  @override
  _SettingsLocaleFormState createState() => _SettingsLocaleFormState();
}

class _SettingsLocaleFormState extends State<SettingsLocaleForm> {
  PreferencesBloc _preferencesBloc;

  String _localizeLocale(BuildContext context, Locale locale) {
    if (locale == null) {
      return S.of(context).systemLanguage;
    } else {
      final localeString = LocaleNames.of(context).nameOf(locale.toString());
      return localeString[0].toUpperCase() + localeString.substring(1);
    }
  }

  @override
  Widget build(BuildContext context) {
    _preferencesBloc = context.bloc<PreferencesBloc>();

    return BlocConsumer(
      cubit: _preferencesBloc,
      listener: (context, state) {},
      builder: (context, state) {
        if (state is PreferencesLoaded) {
          return _LenguageHolder(state);
        } else {
          return Container();
        }
      },
    );
  }

  Widget _LenguageHolder(PreferencesLoaded state) {
    return ExpansionListCard<Locale>(
      title: S.of(context).language,
      subTitle: _localizeLocale(context, state.locale),
      leading: Icon(Icons.language, size: 48),
      items: [
        null,
        ...S.delegate.supportedLocales,
      ],
      itemBuilder: (locale) {
        return ExpansionCardItem(
          text: _localizeLocale(context, locale),
          onTap: () => _preferencesBloc.add(ChangeLocale(locale)),
        );
      },
    );
  }
}
