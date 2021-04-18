import 'package:flutter/material.dart';
import 'package:my_contacts/models/user.dart';
import 'package:my_contacts/provider/users.dart';
import 'package:my_contacts/routes/app-routes.dart';

import 'package:my_contacts/widgets/user-tile.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Pinguinos Team'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
                }),
          ],
        ),
        body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
        ));
  }
}
