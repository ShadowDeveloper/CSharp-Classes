import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.deepOrangeAccent,
          scaffoldBackgroundColor: Colors.white,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.deepOrangeAccent,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        darkTheme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.deepOrangeAccent,
          scaffoldBackgroundColor: Colors.black,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.deepOrangeAccent,
            textTheme: ButtonTextTheme.normal,
          ),
        ),
        home: ByteBankApp(),
        debugShowCheckedModeBanner: false,
      ),
    );

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransferenceList();
  }
}

class FormTransference extends StatelessWidget {
  final TextEditingController _accountNumberController =
      TextEditingController(); // ou new TextEditingController()
  final TextEditingController _valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.deepOrangeAccent,
        appBar: AppBar(
          title: Text("NewPonto"),
          // backgroundColor: Colors.deepOrangeAccent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Editor(
                _accountNumberController,
                "Número coletor",
                "0000",
              ),
              Editor(
                _valorController,
                "Valor",
                "0.00",
                iconParam: Icons.monetization_on,
              ),
              RaisedButton(
                onPressed: () => _createTransference(context),
                // color: Colors.white,
                // textColor: Colors.deepOrangeAccent,
                child: Text("Confirmar"),
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
      debugPrint('Criando transferencia');
      debugPrint('Transferencia $transferenceCreated');
      Navigator.pop(context, transferenceCreated);
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

class TransferenceList extends StatefulWidget {
  @override
  _TransferenceListState createState() => _TransferenceListState();
}

class _TransferenceListState extends State<TransferenceList> {
  final List<Transference> _listTransferences = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        title: Text(
          "NewPonto",
          style: TextStyle(),
        ),
        // backgroundColor: Colors.deepOrangeAccent,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: _listTransferences.length,
        itemBuilder: (context, index) {
          final transference = _listTransferences[index];
          return TransferenceItem(transference);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transference> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormTransference();
          }));

          future.then((transferResponse) {
            Future.delayed(Duration(seconds: 5), () {
              if (transferResponse != null) {
                setState(() {
                  _listTransferences.add(transferResponse);
                });
              }
            });
            // debugPrint('chegou no then do future');
            // debugPrint('$transferResponse');
          });
        },
        // backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          // color: Colors.deepOrangeAccent,
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
