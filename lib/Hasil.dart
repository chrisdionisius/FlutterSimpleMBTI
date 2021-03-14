import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  const Hasil({
    Key key,
    @required this.analisis,
  }) : super(key: key);

  final Map<String, String> analisis;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            analisis['Tipe'],
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            analisis['Karakter'],
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Image.network(analisis['Gambar']),
          ),
          Text(analisis['Keterangan'],
              style: TextStyle(
                color: Colors.white,
              )),
          Divider(),
          Text(
            analisis['Profesi'],
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
