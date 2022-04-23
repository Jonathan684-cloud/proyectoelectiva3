import 'package:flutter/material.dart';

class PedidoActualScreen extends StatelessWidget {
  const PedidoActualScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedido Actual'),
      ),
      body: const Center(
        child: Text('Pedido Actual'),
      ),
    );
  }
}
