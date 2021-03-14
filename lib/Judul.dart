import 'package:flutter/material.dart';

class Judul extends StatelessWidget {
  const Judul({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(5),
      child: Text(
        'Cek Tipe Kepribadian Kamu',
        style: TextStyle(fontSize: 20, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
