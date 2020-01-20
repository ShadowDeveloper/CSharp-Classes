import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.deepOrangeAccent,
          appBar: AppBar(
            title: Text("NewPonto"),
            backgroundColor: Colors.deepOrangeAccent,
            elevation: 0,
          ),
          body: ListaTransferencia(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            child: Icon(
              Icons.add,
              color: Colors.deepOrangeAccent,
            ),
          ),
        ),
      ),
    );

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemTransferencia(Transferencia(100.0, 1000)),
        ItemTransferencia(Transferencia(200.0, 1024)),
        ItemTransferencia(Transferencia(300.0, 2048)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
