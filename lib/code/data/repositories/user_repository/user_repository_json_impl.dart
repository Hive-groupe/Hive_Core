part of 'user_repository.dart';

class UserRepositoryJsonImpl implements UserRepository<User> {
  late final String path;

  @override
  late BehaviorSubject<User> _userController;

  @override
  late BehaviorSubject<BuiltList<User>> _userListController;

  UserRepositoryJsonImpl(this.path);

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString(path);
    return jsonText;
  }

  @override
  Future<String> addUser(Map data) async {
    throw UnimplementedError();
  }

  @override
  Future<bool> removeUser(String id) async {
    throw UnimplementedError();
  }

  @override
  Future<User> getUserById(String id) async {
    var _data;
    var _rest;
    List<User> _list;

    _data = jsonDecode(
      await loadJsonData(),
    );
    _rest = _data as List;
    _list = _rest
        .map(
          (e) => User.fromJson(e),
        ) // serializers.deserializeWith(User.serializer, e)
        .toList();

    return _list.where((element) => element.id == id).toList()[0];
  }

  @override
  Stream<User> getStreamUserById(String id) {
    throw UnimplementedError();
  }

  @override
  Future updateUser(Map data, String id) async {}

  @override
  Stream<BuiltList<User>> fetchAllUsers({required String currentUserId}) {
    /*var _data;
    var _rest;
    Future<List<User>> _list;

    _data = jsonDecode(await loadJsonData(),);
    _rest = _data as List;
    _list = Future.value(_rest
        .map((e) =>
            User.fromJson(e),) // serializers.deserializeWith(Chat.serializer, e)
        .toList(),);

    return _list;*/
    return _userListController.stream;
  }
}
