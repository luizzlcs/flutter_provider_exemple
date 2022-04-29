import 'package:flutter/material.dart';
import 'package:flutter_provider_exemple/provider/produto_model.dart';
import 'package:flutter_provider_exemple/provider/user_model.dart';
import 'package:provider/provider.dart';

class ProdutoWidget extends StatelessWidget {
  const ProdutoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8),
        child: Text(
          context.read<ProdutoModel>().nome,
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.red,
      ),
    );
  }
}
