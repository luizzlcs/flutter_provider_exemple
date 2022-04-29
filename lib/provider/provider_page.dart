import 'package:flutter/material.dart';
import 'package:flutter_provider_exemple/provider/produto_model.dart';
import 'package:flutter_provider_exemple/provider/produto_widget.dart';
import 'package:flutter_provider_exemple/provider/user_model.dart';

import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Pode utilizar uma das estruturas
    var user = Provider.of<UserModel>(context);
    //var user = context.read<UserModel>();
    //read - ele vai retornar uma instância sem ficar escutando alterações
    // var user = context.select<UserModel, String>((userModel) => userModel.imgAvatar);
    //var user = context.watch<UserModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                // para as formas anteriores 
                // backgroundImage: NetworkImage(user),
                backgroundImage: NetworkImage(user.imgAvatar),
              ),
              SizedBox(
                height: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Text(user.name),
                    ),
                    Text(user.birthDate),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Provider(
                create: (_) => ProdutoModel(nome: 'Ford Models'),
                child: ProdutoWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
