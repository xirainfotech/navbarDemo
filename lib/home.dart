import 'package:flutter/material.dart';
import 'package:navabar_demo/bloc.dart';
import 'package:navabar_demo/models/usermodels.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userBloc = UserBloc();

  @override
  void initState() {
    userBloc.fetchUserData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    userBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<UserDataModels>>(
        stream: userBloc.stream,
        builder: (c, s) {
          if (s.connectionState != ConnectionState.active) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: s.data.length,
            shrinkWrap: true,
            itemBuilder: (c, i) {
              return ListTile(
                title: Text(
                  s.data[i].title,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
