import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "DropDown Widget",
      home: CurrencyList(),
    )
  );
}

class CurrencyList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CurrencyList();
  }
}

class _CurrencyList extends State{
  var _listCurrency = ['BDT', 'INR', 'JPY', 'USD', 'GBP', 'CAD'];
  var _currentSelected = 'BDT';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Currency", style: TextStyle(fontWeight: FontWeight.bold),),),
      body: Container(
        margin: EdgeInsets.only(top: 300.0, left: 130.0),
        width: 200.0,
        height: 50.0,
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              items: _listCurrency.map((String dropDownItem){
                return DropdownMenuItem<String>(
                  value: dropDownItem,
                  child: Text(dropDownItem, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),),
                );
              }).toList(),
              onChanged: (newItem){
                setState(() {
                  this._currentSelected = newItem!;
                });
              },
              value: _currentSelected,
            ),
          ],
        ),
      ),
    );
  }
}