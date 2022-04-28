import 'package:flutter/material.dart';
import 'package:flutter_provider_exemple/changer_notifier/provider_controller.dart';
import 'package:provider/provider.dart';

class ChangeNotifierParge extends StatelessWidget {
  const ChangeNotifierParge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<ProviderController>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Notifier Page'),
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
      ),
    );
  }
}
