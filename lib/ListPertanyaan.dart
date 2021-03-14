import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPertanyaan extends StatelessWidget {
  final pertanyaan;
  final score;
  final hasil;
  final Function stateMethod;
  const ListPertanyaan(
      {Key key, this.pertanyaan, this.score, this.hasil, this.stateMethod})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(pertanyaan.length, (index) {
        if (score.asMap()[index] == null) score.add('');
        return Container(
            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: new BorderRadius.all(const Radius.circular(15.0)),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0xff46a0ae),
                        const Color(0xff03fac9)
                      ]),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(15.0),
                        topRight: const Radius.circular(15.0),
                      )),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Text(
                    pertanyaan[index][0][0],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                RadioListTile(
                  contentPadding: EdgeInsets.all(3),
                  value: pertanyaan[index][1][1],
                  title: Text(pertanyaan[index][1][0]),
                  groupValue: score[index],
                  onChanged: (value) {
                    hasil[index] = value;
                    score[index] = value;
                    stateMethod();
                  },
                ),
                RadioListTile(
                  contentPadding: EdgeInsets.all(3),
                  value: pertanyaan[index][2][1],
                  title: Text(pertanyaan[index][2][0]),
                  groupValue: score[index],
                  onChanged: (value) {
                    hasil[index] = value;
                    score[index] = value;
                    stateMethod();
                  },
                ),
              ],
            ));
      }),
    );
  }
}
