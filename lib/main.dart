import 'package:flutter/material.dart';
import 'package:flutter_provider_exemple/changer_notifier/change_notifier_parge.dart';
import 'package:flutter_provider_exemple/changer_notifier/provider_controller.dart';
import 'package:flutter_provider_exemple/provider/provider_page.dart';

import 'package:flutter_provider_exemple/provider/user_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) {
            return UserModel(
              name: 'Beatriz Mel',
              imgAvatar:
                  'https://media.gettyimages.com/photos/studio-portrait-of-a-beautiful-girl-picture-id1224234453?s=2048x2048',
              birthDate: '(16/04/1990)',
            );
          },
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/provider': (context) => ProviderPage(),
          '/changenotifier': (_) => ChangeNotifierParge()
        },
        home: Builder(builder: (context) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/provider');
                    },
                    icon: const Icon(Icons.widgets),
                    label: const Text('Provider'),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/changenotifier');
                    },
                    icon: const Icon(Icons.change_circle_rounded),
                    label: const Text('Change Notifier'),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
