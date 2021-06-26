import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_core/code/controllers/blocs/chat_room_bloc/chat_room_bloc.dart';
import 'package:hive_core/code/models/user.dart';
import 'package:hive_core/code/ui/pages/chat_roon_screen/widgets/model_title.dart';
import 'package:hive_core/code/utils/tools/file_tools.dart';
import 'package:image_picker/image_picker.dart';

class ChatControlsBar extends StatefulWidget {
  final User receiver;

  ChatControlsBar({
    required this.receiver,
  });

  @override
  _ChatControlsBarState createState() => _ChatControlsBarState();
}

class _ChatControlsBarState extends State<ChatControlsBar> {
  // Blocs
  late ChatRoomBloc _chatRoomBloc;

  @override
  void initState() {
    // Blocs
    _chatRoomBloc = BlocProvider.of<ChatRoomBloc>(context);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _onSendMenssage() {
    String _mesagge;

    _mesagge = _chatRoomBloc.state.sendController.text;

    _chatRoomBloc.add(
      SendTextMessage(
        receiverId: widget.receiver.id ?? '',
        message: _mesagge,
      ),
    );
  }

  _onRecordAudio() => _chatRoomBloc.add(
        RecordAudio(),
      );

  void pickImage({required ImageSource source}) async {
    String _mesagge;
    File selectedImage;

    _mesagge = _chatRoomBloc.state.sendController.text;
    selectedImage = await FileTools.pickImage(source: source);

    if (selectedImage != null) {
      _chatRoomBloc.add(
        SendImageMessage(
          receiverId: widget.receiver.id ?? '',
          message: _mesagge,
          photo: selectedImage,
        ),
      );
    }
  }

  _onTextEditChanged(String value) => _chatRoomBloc.add(OnTextEditChanged(
        writing: (value.length > 0 && value.trim() != ""),
      ));

  _onBtnEmoji() => _chatRoomBloc.add(
        OnTapBtnEmojis(),
      );

  hideEmojiContainer() => _chatRoomBloc.add(
        HideEmojiContainer(),
      );

  addMediaModal(context, String currentUserId) {
    showModalBottomSheet(
        context: context,
        elevation: 0,
        //  backgroundColor: ConstColors.bronzeColor,
        builder: (context) {
          return Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: <Widget>[
                    TextButton(
                      child: Icon(
                        Icons.close,
                      ),
                      onPressed: () => Navigator.maybePop(context),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Content and tools",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: ListView(
                  children: <Widget>[
                    ModalTile(
                      onTap: _onMediaChoise,
                      title: "Media",
                      subtitle: "Share Photos and Video",
                      icon: Icons.image,
                    ),
                    ModalTile(
                      title: "File",
                      subtitle: "Share files",
                      icon: Icons.tab,
                    ),
                    ModalTile(
                      title: "Contact",
                      subtitle: "Share contacts",
                      icon: Icons.contacts,
                    ),
                    ModalTile(
                      title: "Location",
                      subtitle: "Share a location",
                      icon: Icons.add_location,
                    ),
                    ModalTile(
                      title: "Schedule Call",
                      subtitle: "Arrange a skype call and get reminders",
                      icon: Icons.schedule,
                    ),
                    ModalTile(
                      title: "Create Poll",
                      subtitle: "Share polls",
                      icon: Icons.poll,
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }

  void _onMediaChoise() {
    Navigator.maybePop(context);
    pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatRoomBloc, ChatRoomState>(
      bloc: _chatRoomBloc,
      listener: (context, state) {},
      builder: (context, state) {
        if (state is ChatLoaded) {
          if (!state.isRecordingAudio && !state.isSearchingMessage) {
            return chatControlsBuild(
              context,
              state,
            );
          } else if (state.isRecordingAudio && !state.isSearchingMessage) {
            return _audioRecordingBuild(
              context,
              state,
            );
          } else if (!state.isRecordingAudio && state.isSearchingMessage) {
            return Container();
          } else {
            return chatControlsBuild(
              context,
              state,
            );
          }
        } else {
          return Container();
        }
      },
    );
  }

  Widget chatControlsBuild(
    BuildContext context,
    ChatLoaded state,
  ) {
    return Container(
      padding: EdgeInsets.all(3.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: roundedContainer(state),
          ),
          SizedBox(
            width: 5.0,
          ),
          _chatRoomBloc.state.isWriting ? _btnSend() : _btnAudio(),
        ],
      ),
    );
  }

  Widget _audioRecordingBuild(
    BuildContext context,
    ChatLoaded state,
  ) {
    return Container(
      padding: EdgeInsets.all(3.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: audioRoundingContainer(),
          ),
          SizedBox(
            width: 5.0,
          ),
          _btnSend(),
        ],
      ),
    );
  }

  Widget _audioRecordedBuild(
    BuildContext context,
    ChatLoaded state,
  ) {
    return Container(
      padding: EdgeInsets.all(3.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: roundedContainer(state),
          ),
          SizedBox(
            width: 5.0,
          ),
          _btnSend(),
        ],
      ),
    );
  }

  Widget roundedContainer(
    ChatLoaded state,
  ) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        color: Colors.grey,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: _onBtnEmoji,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              icon: Icon(Icons.insert_emoticon, // sentiment_very_satisfied
                  size: 25.0,
                  color: Theme.of(context).hintColor),
            ),
            //SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                controller: _chatRoomBloc.state.sendController,
                focusNode: _chatRoomBloc.state.textFieldFocus,
                onTap: hideEmojiContainer,
                style: TextStyle(
                  color: Colors.white,
                ),
                onChanged: (value) => _onTextEditChanged(value),
                decoration: InputDecoration(
                  hintText: "Type a message",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () => addMediaModal(context, state.sender.id ?? ''),
              icon: Icon(Icons.attach_file,
                  size: 25.0, color: Theme.of(context).hintColor),
            ),
            //SizedBox(width: 8.0),
            _chatRoomBloc.state.isWriting
                ? Container()
                : IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () => pickImage(source: ImageSource.camera),
                    icon: Icon(Icons.camera_alt,
                        size: 25.0, color: Theme.of(context).hintColor),
                  ),
            //  SizedBox(width: 8.0),
          ],
        ),
      ),
    );
  }

  Widget audioRoundingContainer() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        color: Colors.grey,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {}, //_onBtnEmoji,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              icon: Icon(Icons.mic, // sentiment_very_satisfied
                  size: 25.0,
                  color: Colors.red),
            ),
            //SizedBox(width: 8.0),
            Expanded(
              child: Text('0:00'),
            ),
            //SizedBox(width: 8.0),
            GestureDetector(
              child: Container(
                child: Text(
                  'Cancelar',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(width: 20.0),
          ],
        ),
      ),
    );
  }

  Widget audioRoundedContainer() {
    return Container();
  }

  Widget _btnSend() {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).accentColor, shape: BoxShape.circle),
      child: IconButton(
        onPressed: _onSendMenssage,
        icon: Icon(
          Icons.send,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _btnAudio() {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).accentColor, shape: BoxShape.circle),
      child: IconButton(
        onPressed: _onRecordAudio,
        icon: Icon(
          Icons.mic,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
