import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPertanyaan extends StatelessWidget {
  final pertanyaan = const [
    [
      ['Minggu ini rasanya berat, kira-kira rencana weekend mu apa sih?', ''],
      ['Nelpon temen ah, ajakin main, hangout seru nih', 'E'],
      ['Banyak film baru nih, buka netflix ah, wait matiin notif WA dulu', 'I']
    ],
    [
      ['Kamu lebih seperti....', ''],
      [
        'Memikirkan keadaan sekarang dan berpikir bagaimana mengatasi situasi saat ini',
        'S'
      ],
      [
        'Memikirkan kondisi kedepan, fakta-fakta itu cukup membosankan, mari membicarakan peluang',
        'N'
      ],
    ],
    [
      [
        'Kamu dapet tawaran dari perusahaan kompetitor untuk bekerja disana, katanya sih gaji nya lebih tinggi, tapi karyawan disini udah klop banget, lagipula kepala divisi mu ngasih kode semisal dia pensiun dia bakal nunjuk kamu sebagai penggantinya, mending ....',
        ''
      ],
      [
        'Konsultasi dulu, buat daftar perbandingan, tanya HR, nyari informasi di jobstreet, berpikir dengan kepala dingin',
        'T'
      ],
      [
        'Pake feeling aja, toh sebelumnya bisa kerja disini karena ngerasa udah cocok sama jobdesk dan lainnya',
        'F'
      ],
    ],
    [
      ['Dua minggu lagi si A nikahan, kira-kira persiapan mu gimana sih ?', ''],
      [
        'Siapin playlist jaman sekolah buat di request ke pemain musiknya, mix-match baju buat berangkat, nyiapin kado pernikahan',
        'J'
      ],
      [
        'Apa itu rencana, toh acaranya pasti bakal meriah banget, go with the flow aja, biasanya hal-hal baik terjadi secara spontan',
        'P'
      ]
    ]
  ];
  final score;
  final hasil;
  final Function stateMethod;
  const ListPertanyaan({Key key, this.score, this.hasil, this.stateMethod})
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
