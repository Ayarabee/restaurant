import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultBody(
          sideBarBody: SingleChildScrollView(
            child: Column(
              children: [
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
                Text('data\n\n'),
              ],
            ),
          ),
          title: 'title',
          sideBarFilledButton: DefaultButtonManager(text: 'add', onTab: () {}),
          body: Column(
            children: [],
          )),
    );
  }
}
