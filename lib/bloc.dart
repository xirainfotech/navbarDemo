import 'dart:async';

import 'package:navabar_demo/api/api.dart';
import 'package:navabar_demo/models/usermodels.dart';

class UserBloc {
  final _api = Api();
  // ignore: close_sinks
  final _userStreamController = StreamController<List<UserDataModels>>();
  Stream<List<UserDataModels>> get stream => _userStreamController.stream;

  void fetchUserData() async {
    var result = await _api.getData();
    _userStreamController.sink.add(result);
  }

  dispose() {
    _userStreamController.close();
  }
}
