import 'package:emoji_picker/emoji_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/controllers/blocs/chat_room_bloc/chat_room_bloc.dart';
import 'package:hive_core/code/utils/constants/const_colors.dart';

class EmojiPiker extends StatelessWidget {
  ChatRoomBloc _chatRoomBloc;

  initState(BuildContext context) {
    _chatRoomBloc = context.bloc<ChatRoomBloc>();
  }

  _onAddEmoji(emoji, category) => _chatRoomBloc.add(AddEmoji(emoji: emoji));

  @override
  Widget build(BuildContext context) {
    initState(context);
    return BlocConsumer<ChatRoomBloc, ChatRoomState>(
      cubit: _chatRoomBloc,
      listener: (context, state) {},
      builder: (context, state) {
        if (state is ChatLoaded) {
          return emojiContainer();
        } else {
          return Container();
        }
      },
    );
  }

  emojiContainer() {
    return EmojiPicker(
      bgColor: HiveCoreConstColors.separatorColor,
      indicatorColor: HiveCoreConstColors.bronzeColor,
      rows: 3,
      columns: 7,
      onEmojiSelected: (emoji, category) => _onAddEmoji(emoji, category),
      recommendKeywords: ["face", "happy", "party", "sad"],
      numRecommended: 50,
    );
  }
}
