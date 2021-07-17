import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_core/code/domain/controllers/blocs/chat_room_bloc/chat_room_bloc.dart';
import 'package:hive_core/code/ui/constants/hive_const_colors.dart';

class EmojiPiker extends StatelessWidget {
  late ChatRoomBloc _chatRoomBloc;

  initState(BuildContext context) {
    _chatRoomBloc = BlocProvider.of<ChatRoomBloc>(context);
  }

  _onAddEmoji(emoji, category) => _chatRoomBloc.add(
        AddEmoji(emoji: emoji),
      );

  @override
  Widget build(BuildContext context) {
    initState(context);
    return BlocConsumer<ChatRoomBloc, ChatRoomState>(
      bloc: _chatRoomBloc,
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
      onEmojiSelected: (Category category, Emoji emoji) =>
          _onAddEmoji(emoji, category),
      config: const Config(
        columns: 7,
        emojiSizeMax: 32.0,
        verticalSpacing: 0,
        horizontalSpacing: 0,
        initCategory: Category.RECENT,
        // bgColor: HiveCoreConstColors.separatorColor,
        indicatorColor: HiveCoreConstColors.bronzeColor,
        showRecentsTab: true,
        recentsLimit: 28,
        noRecentsText: 'No Recents',
      ),
    );
  }
}
