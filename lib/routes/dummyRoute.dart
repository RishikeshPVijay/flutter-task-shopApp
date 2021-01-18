import 'package:flutter/material.dart';

import '../widgets/appBarWidget.dart';

class DummyRoute extends StatelessWidget {
  static const routeName = '/dummy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarWidget(
          height: 100,
          title: 'Title',
        ),
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
