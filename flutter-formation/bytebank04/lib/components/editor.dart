import 'package:flutter/material.dart';

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