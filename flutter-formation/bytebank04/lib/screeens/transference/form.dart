import 'package:bytebank04/components/editor.dart';
import 'package:bytebank04/models/transference.dart';
import 'package:flutter/material.dart';

const String _appBarTitle = "NewPonto";
const String _labelAccount = "Número coletor";
const String _labelValue = "Valor";
const String _textConfirm = "Confirmar";


class FormTransference extends StatelessWidget {
  final TextEditingController _accountNumberController =
      TextEditingController(); // ou new TextEditingController()
  final TextEditingController _valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.deepOrangeAccent,
        appBar: AppBar(
          title: Text(_appBarTitle),
          // backgroundColor: Colors.deepOrangeAccent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Editor(
                _accountNumberController,
                _labelAccount,
                "0000",
              ),
              Editor(
                _valorController,
                _labelValue,
                "0.00",
                iconParam: Icons.monetization_on,
              ),
              RaisedButton(
                onPressed: () => _createTransference(context),
                // color: Colors.white,
                // textColor: Colors.deepOrangeAccent,
                child: Text(_textConfirm),
              )
            ],
          ),
        ));
  }

  void _createTransference(BuildContext context) {
    final int accountNumber = int.tryParse(_accountNumberController.text);
    final double transferValue = double.tryParse(_valorController.text);

    if (accountNumber != null && transferValue != null) {
      final transferenceCreated = Transference(transferValue, accountNumber);
      Navigator.pop(context, transferenceCreated);
    }
  }
}
