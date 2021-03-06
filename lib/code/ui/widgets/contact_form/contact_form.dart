import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_core/code/domain/controllers/blocs/contact_form_bloc/address_field_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/contact_form_bloc/contact_form_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/contact_form_bloc/facebook_field_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/contact_form_bloc/github_field_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/contact_form_bloc/instagram_field_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/contact_form_bloc/linkedin_field_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/contact_form_bloc/mails_field_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/contact_form_bloc/phone_field_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/contact_form_bloc/twitter_field_bloc.dart';
import 'package:hive_core/code/ui/widgets/loading_form_dialog.dart';

import 'address_form_card.dart';
import 'facebook_form_card.dart';
import 'github_form_card.dart';
import 'instagram_form_card.dart';
import 'linkeding_form_card.dart';
import 'mail_form_card.dart';
import 'phone_form_card.dart';
import 'twitter_form_card.dart';

class ContactForm extends StatelessWidget {
  final ContactFormBloc contactFormBloc;

  const ContactForm({
    Key? key,
    required this.contactFormBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => contactFormBloc,
      child: Builder(
        builder: (context) {
          return FormBlocListener<ContactFormBloc, String, String>(
            onSubmitting: (context, state) {
              LoadingDialog.show(context);
            },
            onSuccess: (context, state) {
              LoadingDialog.hide(context);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: SingleChildScrollView(
                    child: Text(state.successResponse ?? ''),
                  ),
                  duration: Duration(milliseconds: 1500),
                ),
              );
            },
            onFailure: (context, state) {
              LoadingDialog.hide(context);

              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.failureResponse ?? ''),
              ));
            },
            child: _contactInformationFormBuildHolder(context),
          );
        },
      ),
    );
  }

  Widget _contactInformationFormBuildHolder(
    BuildContext context,
  ) {
    return // SingleChildScrollView(
        // physics: ClampingScrollPhysics(),
        //  child:
        Container(
      child: Column(
        children: <Widget>[
          _addressListHolder(context),
          SizedBox(
            height: 25,
          ),
          _phoneListHolder(context),
          SizedBox(
            height: 25,
          ),
          _mailListHolder(context),
          SizedBox(
            height: 25,
          ),
          _facebookListHolder(context),
          SizedBox(
            height: 25,
          ),
          _instagramListHolder(context),
          SizedBox(
            height: 25,
          ),
          _twitterListHolder(context),
          SizedBox(
            height: 25,
          ),
          _githubListHolder(context),
          SizedBox(
            height: 25,
          ),
          _linkedinListHolder(context),
        ],
      ),
      //  ),
    );
  }

  Widget _addressListHolder(
    BuildContext context,
  ) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Icon(CupertinoIcons.location),
            alignment: Alignment.centerLeft,
          ),
          Container(
            child: Column(
              children: <Widget>[
                BlocBuilder<ListFieldBloc<AddressFieldBloc>,
                    ListFieldBlocState<AddressFieldBloc>>(
                  bloc: contactFormBloc.address,
                  builder: (context, state) {
                    if (state.fieldBlocs.isNotEmpty) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.fieldBlocs.length,
                        itemBuilder: (context, i) {
                          return AddressCard(
                            addressIndex: i,
                            addressField: state.fieldBlocs[i],
                            onRemoveAddress: () =>
                                contactFormBloc.removeAddress(i),
                          );
                        },
                      );
                    }
                    return Container();
                  },
                ),
                _btnAddAddress(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _phoneListHolder(
    BuildContext context,
  ) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Icon(CupertinoIcons.phone),
            alignment: Alignment.centerLeft,
          ),
          Container(
            child: Column(
              children: <Widget>[
                BlocBuilder<ListFieldBloc<PhoneFieldBloc>,
                    ListFieldBlocState<PhoneFieldBloc>>(
                  bloc: contactFormBloc.phones,
                  builder: (context, state) {
                    if (state.fieldBlocs.isNotEmpty) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.fieldBlocs.length,
                        itemBuilder: (context, i) {
                          return PhoneFormCard(
                            phoneIndex: i,
                            phoneFieldBloc: state.fieldBlocs[i],
                            onRemovePhone: () => contactFormBloc.removePhone(i),
                          );
                        },
                      );
                    }
                    return Container();
                  },
                ),
                _btnAddPhone(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _mailListHolder(
    BuildContext context,
  ) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Icon(CupertinoIcons.mail),
            alignment: Alignment.centerLeft,
          ),
          Container(
            child: Column(
              children: <Widget>[
                BlocBuilder<ListFieldBloc<MailFieldBloc>,
                    ListFieldBlocState<MailFieldBloc>>(
                  bloc: contactFormBloc.mails,
                  builder: (context, state) {
                    if (state.fieldBlocs.isNotEmpty) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.fieldBlocs.length,
                        itemBuilder: (context, i) {
                          return MailFormCard(
                            mailIndex: i,
                            mailFieldBloc: state.fieldBlocs[i],
                            onRemoveMail: () => contactFormBloc.removeMail(i),
                          );
                        },
                      );
                    }
                    return Container();
                  },
                ),
                _btnAddMail(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _facebookListHolder(
    BuildContext context,
  ) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Icon(FontAwesomeIcons.facebook),
            alignment: Alignment.centerLeft,
          ),
          Container(
            child: Column(
              children: <Widget>[
                BlocBuilder<ListFieldBloc<FacebookFieldBloc>,
                    ListFieldBlocState<FacebookFieldBloc>>(
                  bloc: contactFormBloc.facebooks,
                  builder: (context, state) {
                    if (state.fieldBlocs.isNotEmpty) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.fieldBlocs.length,
                        itemBuilder: (context, i) {
                          return FacebookFormCard(
                            facebookIndex: i,
                            facebookFieldBloc: state.fieldBlocs[i],
                            onRemoveFacebook: () =>
                                contactFormBloc.removeFacebook(i),
                          );
                        },
                      );
                    }
                    return Container();
                  },
                ),
                _btnAddFacebook(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _instagramListHolder(
    BuildContext context,
  ) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Icon(FontAwesomeIcons.instagram),
            alignment: Alignment.centerLeft,
          ),
          Container(
            child: Column(
              children: <Widget>[
                BlocBuilder<ListFieldBloc<InstagramFieldBloc>,
                    ListFieldBlocState<InstagramFieldBloc>>(
                  bloc: contactFormBloc.instagrams,
                  builder: (context, state) {
                    if (state.fieldBlocs.isNotEmpty) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.fieldBlocs.length,
                        itemBuilder: (context, i) {
                          return InstagramFormCard(
                            instagramIndex: i,
                            instagramFieldBloc: state.fieldBlocs[i],
                            onRemoveInstagram: () =>
                                contactFormBloc.removeInstagram(i),
                          );
                        },
                      );
                    }
                    return Container();
                  },
                ),
                _btnAddInstagram(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _twitterListHolder(
    BuildContext context,
  ) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Icon(FontAwesomeIcons.twitter),
            alignment: Alignment.centerLeft,
          ),
          Container(
            child: Column(
              children: <Widget>[
                BlocBuilder<ListFieldBloc<TwitterFieldBloc>,
                    ListFieldBlocState<TwitterFieldBloc>>(
                  bloc: contactFormBloc.twitters,
                  builder: (context, state) {
                    if (state.fieldBlocs.isNotEmpty) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.fieldBlocs.length,
                        itemBuilder: (context, i) {
                          return TwitterFormCard(
                            twitterIndex: i,
                            twitterFieldBloc: state.fieldBlocs[i],
                            onRemoveTwitter: () =>
                                contactFormBloc.removeTwitter(i),
                          );
                        },
                      );
                    }
                    return Container();
                  },
                ),
                _btnAddTwitter(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _githubListHolder(
    BuildContext context,
  ) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Icon(FontAwesomeIcons.github),
            alignment: Alignment.centerLeft,
          ),
          Container(
            child: Column(
              children: <Widget>[
                BlocBuilder<ListFieldBloc<GithubFieldBloc>,
                    ListFieldBlocState<GithubFieldBloc>>(
                  bloc: contactFormBloc.githubs,
                  builder: (context, state) {
                    if (state.fieldBlocs.isNotEmpty) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.fieldBlocs.length,
                        itemBuilder: (context, i) {
                          return GithubFormCard(
                            githubIndex: i,
                            githubFieldBloc: state.fieldBlocs[i],
                            onRemoveGithub: () =>
                                contactFormBloc.removeGithub(i),
                          );
                        },
                      );
                    }
                    return Container();
                  },
                ),
                _btnAddGithub(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _linkedinListHolder(
    BuildContext context,
  ) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Icon(FontAwesomeIcons.linkedin),
            alignment: Alignment.centerLeft,
          ),
          Container(
            child: Column(
              children: <Widget>[
                BlocBuilder<ListFieldBloc<LinkedinFieldBloc>,
                    ListFieldBlocState<LinkedinFieldBloc>>(
                  bloc: contactFormBloc.linkedins,
                  builder: (context, state) {
                    if (state.fieldBlocs.isNotEmpty) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.fieldBlocs.length,
                        itemBuilder: (context, i) {
                          return LinkedinFormCard(
                            linkedinIndex: i,
                            linkedinFieldBloc: state.fieldBlocs[i],
                            onRemoveLinkedin: () =>
                                contactFormBloc.removeLinkedin(i),
                          );
                        },
                      );
                    }
                    return Container();
                  },
                ),
                _btnAddLinkedin(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _btnAddAddress(
    BuildContext context,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).accentColor.withOpacity(0.7),
      ),
      onPressed: contactFormBloc.addAddress,
      child: Text('ADD Dereccion'),
    );
  }

  Widget _btnAddPhone(
    BuildContext context,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).accentColor.withOpacity(0.7),
      ),
      onPressed: contactFormBloc.addPhone,
      child: Text('Añadir telefono'),
    );
  }

  Widget _btnAddMail(
    BuildContext context,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).accentColor.withOpacity(0.7),
      ),
      onPressed: contactFormBloc.addMail,
      child: Text('Añadir correo electronico'),
    );
  }

  Widget _btnAddFacebook(
    BuildContext context,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).accentColor.withOpacity(0.7),
      ),
      onPressed: contactFormBloc.addFacebook,
      child: Text('Añadir facebook'),
    );
  }

  Widget _btnAddInstagram(
    BuildContext context,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).accentColor.withOpacity(0.7),
      ),
      onPressed: contactFormBloc.addInstagram,
      child: Text('Añadir instagram'),
    );
  }

  Widget _btnAddTwitter(
    BuildContext context,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).accentColor.withOpacity(0.7),
      ),
      onPressed: contactFormBloc.addTwitter,
      child: Text('Añadir twitter'),
    );
  }

  Widget _btnAddGithub(
    BuildContext context,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).accentColor.withOpacity(0.7),
      ),
      onPressed: contactFormBloc.addGithub,
      child: Text('Añadir github'),
    );
  }

  Widget _btnAddLinkedin(
    BuildContext context,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).accentColor.withOpacity(0.7),
      ),
      onPressed: contactFormBloc.addLinkedin,
      child: Text('Añadir linkedin'),
    );
  }
}
