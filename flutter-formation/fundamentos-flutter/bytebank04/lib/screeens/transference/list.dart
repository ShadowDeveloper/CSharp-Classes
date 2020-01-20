import 'package:bytebank04/models/transference.dart';
import 'package:bytebank04/screeens/transference/form.dart';
import 'package:bytebank04/screeens/transference/item.dart';
import 'package:flutter/material.dart';

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
          final Future<Transference> future = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FormTransference();
              },
            ),
          );

          future.then((transferResponse) {
            Future.delayed(
              Duration(seconds: 5),
              () {
                _updateList(transferResponse);
              },
            );
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

  void _updateList(Transference transferResponse) {
    if (transferResponse != null) {
      setState(() {
        _listTransferences.add(transferResponse);
      });
    }
  }
}
