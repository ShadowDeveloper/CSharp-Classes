import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() =>
    runApp(
      MaterialApp(
        home: ByteBankApp(),
      ),
    );

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FormTransference();
  }
}

class FormTransference extends StatelessWidget {
  final TextEditingController _accountNumberController =
  TextEditingController(); // ou new TextEditingController()
  final TextEditingController _valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        title: Text("NewPonto form"),
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Editor(
            _valorController,
            "Número coletor",
            "0000",
          ),
          Editor(
            _accountNumberController,
            "Valor",
            "0.00",
            iconParam: Icons.monetization_on,
          ),
          RaisedButton(
            onPressed: () => _createTransference(),
            color: Colors.white,
            textColor: Colors.deepOrangeAccent,
            child: Text("Confirmar"),
          )
        ],
      ),
    );
  }

  void _createTransference() {
    final int accountNumber = int.tryParse(_accountNumberController.text);
    final double transferValue = double.tryParse(_valorController.text);

    if (accountNumber != null && transferValue != null) {
      final transferenceCreated = Transference(transferValue, accountNumber);
      debugPrint('Transferencia $transferenceCreated');
    }
  }

}

class Editor extends StatelessWidget {
  final TextEditingController _controllerParam;
  final String _labelParam;
  final String _hintParam;
  final IconData iconParam;

  Editor(this._controllerParam, this._labelParam, this._hintParam,
      {this.iconParam});

  //Colocando as chaves no último parâmetro, nós conseguimos torná-lo OPCIONAL

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        controller: _controllerParam,
        style: TextStyle(fontSize: 20.0),
        decoration: InputDecoration(
          labelText: _labelParam,
          hintText: _hintParam,
          icon: iconParam != null ? Icon(iconParam) : null,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class TransferenceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        title: Text("NewPonto"),
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          TransferenceItem(Transference(100.0, 1000)),
          TransferenceItem(Transference(200.0, 1024)),
          TransferenceItem(Transference(300.0, 2048)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.deepOrangeAccent,
        ),
      ),
    );
  }
}

class TransferenceItem extends StatelessWidget {
  final Transference _transference;

  TransferenceItem(this._transference);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transference.value.toString()),
        subtitle: Text(_transference.accountNumber.toString()),
      ),
    );
  }
}

class Transference {
  final double value;
  final int accountNumber;

  Transference(this.value, this.accountNumber);

  @override
  String toString() {
    return 'Transferencia{valor: $value, numeroConta: $accountNumber}';
  }
}
