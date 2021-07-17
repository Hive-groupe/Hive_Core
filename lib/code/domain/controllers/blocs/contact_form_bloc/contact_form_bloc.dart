import 'package:built_collection/built_collection.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/contact_form_bloc/mails_field_bloc.dart';
import 'package:hive_core/code/data/models/address.dart';
import 'package:hive_core/code/data/models/contactInformation.dart';
import 'package:hive_core/code/data/models/contactInformationValue.dart';
import 'package:hive_core/code/data/repositories/authentication_repository/authentication_repository.dart';

import 'address_field_bloc.dart';
import 'facebook_field_bloc.dart';
import 'github_field_bloc.dart';
import 'instagram_field_bloc.dart';
import 'linkedin_field_bloc.dart';
import 'phone_field_bloc.dart';
import 'twitter_field_bloc.dart';

class ContactFormBloc extends FormBloc<String, String> {
  // Repositorys
  final AuthenticationRepository _authenticationRepository;

  late String? userId;
  late ContactInformation _contactInformation;

  final address = ListFieldBloc<AddressFieldBloc>(name: 'address');
  final phones = ListFieldBloc<PhoneFieldBloc>(name: 'phones');
  final mails = ListFieldBloc<MailFieldBloc>(name: 'mails');
  final facebooks = ListFieldBloc<FacebookFieldBloc>(name: 'facebooks');
  final instagrams = ListFieldBloc<InstagramFieldBloc>(name: 'instagrams');
  final twitters = ListFieldBloc<TwitterFieldBloc>(name: 'twitters');
  final githubs = ListFieldBloc<GithubFieldBloc>(name: 'githubs');
  final linkedins = ListFieldBloc<LinkedinFieldBloc>(name: 'linkedins');

  ContactFormBloc({
    required AuthenticationRepository authenticationRepository,
  }) : _authenticationRepository = authenticationRepository {
    initState();
  }

  ContactFormBloc.fromContactInformation({
    required AuthenticationRepository authenticationRepository,
    // Models
    required ContactInformation contactInformation,
  })  : _authenticationRepository = authenticationRepository,
        // Models
        _contactInformation = contactInformation {
    initState();
    _loadModel();
  }

  initState() {
    addFieldBlocs(
      fieldBlocs: [
        address,
        phones,
        mails,
        facebooks,
        instagrams,
        twitters,
        githubs,
        linkedins
      ],
    );
  }

  @override
  Future<void> close() {
    address.close();
    phones.close();
    mails.close();
    address.close();
    facebooks.close();
    instagrams.close();
    twitters.close();
    githubs.close();
    linkedins.close();

    return super.close();
  }

  void addErrors() {
    address.addError('Awesome Error!');
    phones.addError('Awesome Error!');
    mails.addError('Awesome Error!');
    facebooks.addError('Awesome Error!');
    instagrams.addError('Awesome Error!');
    twitters.addError('Awesome Error!');
    githubs.addError('Awesome Error!');
    linkedins.addError('Awesome Error!');
  }

  _loadModel() async {
    userId = userId ?? await _authenticationRepository.getCurrentUserId();
    // AddressFieldBloc
    if (_contactInformation.addresses != null) {
      _contactInformation.addresses.forEach((element) {
        AddressFieldBloc _addressFieldBloc = _getAddressFildBloc();
        _addressFieldBloc.label.updateValue(element.label ?? '');
        _addressFieldBloc.street.updateValue(element.street ?? '');
        _addressFieldBloc.number.updateValue(
          element.number.toString(),
        );
        _addressFieldBloc.postalCode.updateValue(element.postalCode ?? '');
        _addressFieldBloc.country.updateValue(element.country ?? '');
        _addressFieldBloc.province.updateValue(element.province ?? '');
        _addressFieldBloc.city.updateValue(element.city ?? '');
        address.addFieldBloc(_addressFieldBloc);
      });
    }

    // AddressFieldBloc
    if (_contactInformation.phones != null) {
      _contactInformation.phones.forEach((element) {
        PhoneFieldBloc _phoneFieldBloc = _getPhoneFildBloc();
        _phoneFieldBloc.label.updateValue(element.label);
        _phoneFieldBloc.value.updateValue(element.value);
        phones.addFieldBloc(_phoneFieldBloc);
      });
    }

    // AddressFieldBloc
    if (_contactInformation.mails != null) {
      _contactInformation.mails.forEach((element) {
        MailFieldBloc _mailFieldBloc = _getMailFildBloc();
        _mailFieldBloc.label.updateValue(element.label);
        _mailFieldBloc.value.updateValue(element.value);
        mails.addFieldBloc(_mailFieldBloc);
      });
    }

    // AddressFieldBloc
    if (_contactInformation.facebook != null) {
      _contactInformation.facebook.forEach((element) {
        FacebookFieldBloc _facebokkFieldBloc = _getFacebookFildBloc();
        _facebokkFieldBloc.label.updateValue(element.label);
        _facebokkFieldBloc.value.updateValue(element.value);
        facebooks.addFieldBloc(_facebokkFieldBloc);
      });
    }

    // AddressFieldBloc
    if (_contactInformation.twitter != null) {
      _contactInformation.twitter.forEach((element) {
        TwitterFieldBloc _twitterFieldBloc = _getTwitterFildBloc();
        _twitterFieldBloc.label.updateValue(element.label);
        _twitterFieldBloc.value.updateValue(element.value);
        twitters.addFieldBloc(_twitterFieldBloc);
      });
    }

    // AddressFieldBloc
    if (_contactInformation.instagram != null) {
      _contactInformation.instagram.forEach((element) {
        InstagramFieldBloc _instagramFieldBloc = _getInstagramFildBloc();
        _instagramFieldBloc.label.updateValue(element.label);
        _instagramFieldBloc.value.updateValue(element.value);
        instagrams.addFieldBloc(_instagramFieldBloc);
      });
    }

    // AddressFieldBloc
    if (_contactInformation.github != null) {
      _contactInformation.github.forEach((element) {
        GithubFieldBloc _githubFieldBloc = _getGithubFildBloc();
        _githubFieldBloc.label.updateValue(element.label);
        _githubFieldBloc.value.updateValue(element.value);
        githubs.addFieldBloc(_githubFieldBloc);
      });
    }

    // AddressFieldBloc
    if (_contactInformation.linkedin != null) {
      _contactInformation.linkedin.forEach((element) {
        LinkedinFieldBloc _linkedinFieldBloc = _getLinkedinFildBloc();
        _linkedinFieldBloc.label.updateValue(element.label);
        _linkedinFieldBloc.value.updateValue(element.value);
        linkedins.addFieldBloc(_linkedinFieldBloc);
      });
    }
  }

  ContactInformation getContactInformation() {
    ContactInformation _contactInformation;
    BuiltList<Address> _addressList;
    BuiltList<ContactInformationValue> _phonesList;
    BuiltList<ContactInformationValue> _mailsList;
    BuiltList<ContactInformationValue> _facebooksList;
    BuiltList<ContactInformationValue> _instagramsList;
    BuiltList<ContactInformationValue> _twittersList;
    BuiltList<ContactInformationValue> _githubsList;
    BuiltList<ContactInformationValue> _linkedinsList;

    _addressList = BuiltList<Address>();
    address.value.forEach((element) {
      _addressList = _addressList.rebuild((b) => b
        ..add(
          Address((b) => b
            ..label = element.label.value
            ..street = element.street.value
            ..number = element.number.valueToInt
            ..postalCode = element.postalCode.value
            ..country = element.country.value
            ..province = element.province.value
            ..city = element.city.value),
        ));
    });

    _phonesList = BuiltList<ContactInformationValue>();
    phones.value.forEach((element) {
      _phonesList = _phonesList.rebuild((b) => b
        ..add(
          ContactInformationValue((b) => b
            ..label = element.label.value
            ..value = element.value.value),
        ));
    });
    _mailsList = BuiltList<ContactInformationValue>();
    mails.value.forEach((element) {
      _mailsList = _mailsList.rebuild((b) => b
        ..add(
          ContactInformationValue((b) => b
            ..label = element.label.value
            ..value = element.value.value),
        ));
    });
    _facebooksList = BuiltList<ContactInformationValue>();
    facebooks.value.forEach((element) {
      _facebooksList = _facebooksList.rebuild((b) => b
        ..add(
          ContactInformationValue((b) => b
            ..label = element.label.value
            ..value = element.value.value),
        ));
    });
    _instagramsList = BuiltList<ContactInformationValue>();
    instagrams.value.forEach((element) {
      _instagramsList = _instagramsList.rebuild((b) => b
        ..add(
          ContactInformationValue((b) => b
            ..label = element.label.value
            ..value = element.value.value),
        ));
    });
    _twittersList = BuiltList<ContactInformationValue>();
    twitters.value.forEach((element) {
      _twittersList = _twittersList.rebuild((b) => b
        ..add(
          ContactInformationValue((b) => b
            ..label = element.label.value
            ..value = element.value.value),
        ));
    });
    _githubsList = BuiltList<ContactInformationValue>();
    githubs.value.forEach((element) {
      _githubsList = _githubsList.rebuild((b) => b
        ..add(
          ContactInformationValue((b) => b
            ..label = element.label.value
            ..value = element.value.value),
        ));
    });
    _linkedinsList = BuiltList<ContactInformationValue>();
    linkedins.value.forEach((element) {
      _linkedinsList = _linkedinsList.rebuild((b) => b
        ..add(
          ContactInformationValue((b) => b
            ..label = element.label.value
            ..value = element.value.value),
        ));
    });

    _contactInformation = ContactInformation(
      (b) => b
        ..addresses.replace(_addressList)
        ..phones.replace(_phonesList)
        ..mails.replace(_mailsList)
        ..facebook.replace(_facebooksList)
        ..instagram.replace(_instagramsList)
        ..twitter.replace(_twittersList)
        ..github.replace(_githubsList)
        ..linkedin.replace(_linkedinsList),
    );

    return _contactInformation;
  }

  AddressFieldBloc _getAddressFildBloc() {
    TextFieldBloc _label = TextFieldBloc(
      name: 'label',
      validators: [FieldBlocValidators.required],
    );
    TextFieldBloc _street = TextFieldBloc(
      name: 'street',
      validators: [FieldBlocValidators.required],
    );
    TextFieldBloc _number = TextFieldBloc(name: 'number');
    TextFieldBloc _postalCode = TextFieldBloc(name: 'postalCode');
    TextFieldBloc _country = TextFieldBloc(name: 'country');
    TextFieldBloc _province = TextFieldBloc(name: 'province');
    TextFieldBloc _city = TextFieldBloc(
      name: 'city',
      validators: [FieldBlocValidators.required],
    );

    return AddressFieldBloc(
      name: 'member',
      label: _label,
      street: _street,
      number: _number,
      postalCode: _postalCode,
      country: _country,
      province: _province,
      city: _city,
    );
  }

  void addAddress() => address.addFieldBloc(
        _getAddressFildBloc(),
      );

  void removeAddress(int index) => address.removeFieldBlocAt(index);

  PhoneFieldBloc _getPhoneFildBloc() {
    TextFieldBloc _label = TextFieldBloc(
      name: 'label',
      validators: [FieldBlocValidators.required],
    );
    TextFieldBloc _number = TextFieldBloc(
      name: 'number',
      validators: [FieldBlocValidators.required],
    );

    return PhoneFieldBloc(
      name: 'member',
      label: _label,
      value: _number,
    );
  }

  void addPhone() => phones.addFieldBloc(
        _getPhoneFildBloc(),
      );

  void removePhone(int index) => phones.removeFieldBlocAt(index);

  MailFieldBloc _getMailFildBloc() {
    TextFieldBloc _label = TextFieldBloc(
      name: 'label',
      validators: [FieldBlocValidators.required],
    );
    TextFieldBloc _number = TextFieldBloc(
      name: 'number',
      validators: [FieldBlocValidators.required],
    );

    return MailFieldBloc(
      name: 'member',
      label: _label,
      value: _number,
    );
  }

  void addMail() => mails.addFieldBloc(
        _getMailFildBloc(),
      );

  void removeMail(int index) => mails.removeFieldBlocAt(index);

  FacebookFieldBloc _getFacebookFildBloc() {
    TextFieldBloc _label = TextFieldBloc(
      name: 'label',
      validators: [FieldBlocValidators.required],
    );
    TextFieldBloc _number = TextFieldBloc(
      name: 'number',
      validators: [FieldBlocValidators.required],
    );

    return FacebookFieldBloc(
      name: 'member',
      label: _label,
      value: _number,
    );
  }

  void addFacebook() => facebooks.addFieldBloc(
        _getFacebookFildBloc(),
      );

  void removeFacebook(int index) => facebooks.removeFieldBlocAt(index);

  TwitterFieldBloc _getTwitterFildBloc() {
    TextFieldBloc _label = TextFieldBloc(
      name: 'label',
      validators: [FieldBlocValidators.required],
    );
    TextFieldBloc _number = TextFieldBloc(
      name: 'number',
      validators: [FieldBlocValidators.required],
    );

    return TwitterFieldBloc(
      name: 'member',
      label: _label,
      value: _number,
    );
  }

  void addTwitter() => twitters.addFieldBloc(
        _getTwitterFildBloc(),
      );

  void removeTwitter(int index) => twitters.removeFieldBlocAt(index);

  InstagramFieldBloc _getInstagramFildBloc() {
    TextFieldBloc _label = TextFieldBloc(
      name: 'label',
      validators: [FieldBlocValidators.required],
    );
    TextFieldBloc _number = TextFieldBloc(
      name: 'number',
      validators: [FieldBlocValidators.required],
    );

    return InstagramFieldBloc(
      name: 'member',
      label: _label,
      value: _number,
    );
  }

  void addInstagram() => instagrams.addFieldBloc(
        _getInstagramFildBloc(),
      );

  void removeInstagram(int index) => instagrams.removeFieldBlocAt(index);

  GithubFieldBloc _getGithubFildBloc() {
    TextFieldBloc _label = TextFieldBloc(
      name: 'label',
      validators: [FieldBlocValidators.required],
    );
    TextFieldBloc _number = TextFieldBloc(
      name: 'number',
      validators: [FieldBlocValidators.required],
    );

    return GithubFieldBloc(
      name: 'member',
      label: _label,
      value: _number,
    );
  }

  void addGithub() => githubs.addFieldBloc(
        _getGithubFildBloc(),
      );

  void removeGithub(int index) => githubs.removeFieldBlocAt(index);

  LinkedinFieldBloc _getLinkedinFildBloc() {
    TextFieldBloc _label = TextFieldBloc(
      name: 'label',
      validators: [FieldBlocValidators.required],
    );
    TextFieldBloc _number = TextFieldBloc(
      name: 'number',
      validators: [FieldBlocValidators.required],
    );

    return LinkedinFieldBloc(
      name: 'member',
      label: _label,
      value: _number,
    );
  }

  void addLinkedin() => linkedins.addFieldBloc(
        _getLinkedinFildBloc(),
      );

  void removeLinkedin(int index) => linkedins.removeFieldBlocAt(index);

  @override
  void onSubmitting() {}
}
