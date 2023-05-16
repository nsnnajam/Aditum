// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  @override
  createState() {
    return new CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {
  List<RadioModel> sampleData = <RadioModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(false, Icons.male, 'Male'));
    sampleData.add(new RadioModel(false, Icons.female, 'Female'));
    sampleData.add(new RadioModel(false, Icons.transgender, 'Other'));
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: sampleData.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: new InkWell(
            //highlightColor: Colors.red,
            splashColor: Colors.blueAccent,
            onTap: () {
              setState(() {
                sampleData.forEach((element) => element.isSelected = false);
                sampleData[index].isSelected = true;
              });
            },
            child: new RadioItem(sampleData[index]),
          ),
        );
      },
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    var txt = Icons.male;
    return new Container(
      margin: new EdgeInsets.all(10.0),
      child: new Container(
        width: 102,
        decoration: new BoxDecoration(
          color: _item.isSelected ? Colors.blueAccent : Colors.transparent,
          border: new Border.all(
              width: 1.0,
              color: _item.isSelected ? Colors.blueAccent : Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            Icon(_item.buttonText),
            new Center(
              child: new Text(_item.text,
                  style: new TextStyle(
                      color: _item.isSelected ? Colors.white : Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
            ),
          ],
        ),
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  var buttonText;
  final String text;

  RadioModel(this.isSelected, this.buttonText, this.text);
}
