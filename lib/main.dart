import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// enum SingingCharacter { lafayette, jefferson }

final _pertanyaan = const [
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

final _alignment = const [
  [
    'INTJ',
    'Arsitek',
    'Pemikir yang imajinatif dan orisinil. Memiliki motivasi tinggi untuk menjalankan ide-idenya hingga mencapai tujuan. Visioner, mandiri, dan percaya diri, memiliki kemampuan menganalisa yang bagus, skeptis, kritis, logis, dan kadang keras kepala.',
    'Peneliti, Ilmuan, Insinyur, Teknisi, Hakim, Programmer',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-40-49-494_com.android.chrome-300x300.png'
  ],
  [
    'INTP',
    'Ahli Logika',
    'Menghargai intelektualitas dan pengetahuan, lebih suka bekerja sendiri, kritis, skeptis, mudah curiga dan pesimis, tidak suka memimpin, dan memiliki minat yang jelas.',
    'Penulis Buku Teknis, Ahli Forensik, Jaksa, Pengacara, Teknisi',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-41-16-385_com.android.chrome-300x300.png'
  ],
  [
    'ENTJ',
    'Sang Komandan',
    'Pemimpin yang pemberani, imajinatif, dan berambisi kuat. Selalu menemukan cara atau menciptakan cara melakukan sesuatu.',
    'Pebisnis, Pengacara, Hakim, Konsultan, Pemimpin Organisasi',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-32-55-155_com.android.chrome-300x300.png'
  ],
  [
    'ENTP',
    'Si Pendebat',
    'Pemikir yang cerdas dan serius yang gatal terhadap tantangan intelektual. Sanggup memecahkan masalah yang menantang. Banyak bicara, fleksibel, dan kurang konsisten.',
    'Pengacara, Psikolog, Konsultan, Ilmuwan, Aktor, Marketing',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-33-19-943_com.android.chrome-300x300.png'
  ],
  [
    'INFJ',
    'Advokat',
    'Pendiam dan mistis, tetapi idealis yang sangat menginspirasi dan tak kenal lelah. Perhatian, tekun, idealis, visioner. Selalu ingin memahami pola pikir orang lain.',
    'Pengajar, Psikolog, Dokter, Konselor, Pekerja Sosial, Fotografer, Seniman',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-41-42-014_com.android.chrome-300x300.png'
  ],
  [
    'INFP',
    'Mediator',
    'Orang yang puitis, baik hati dan altruisik, selalu ingin membantu aksi kebaikan. Perhatian dan peka, antusias dan setia, idealis dan perfeksionis, setia kepada prinsip yang digenggam.',
    'Penulis, Sastrawan, Konselor, Psikolog, Pengajar, Seniman, Pemuka Agama',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-42-09-996_com.android.chrome-300x300.png'
  ],
  [
    'ENFJ',
    'Sang Protagonis',
    'Pemimpin yang karismatik dan menginspirasi, mampu memukau pendengarnya. Kreatif, peduli apa kata orang lain, pandai bergaul, menyukai tantangan, dan butuh apresiasi.',
    'Konsultan, Psikolog, Pengajar, Marketing, Entertainer, Penulis, Motivator',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-34-13-127_com.android.chrome-300x300.png'
  ],
  [
    'ENFP',
    'Juru Kampanye',
    'Semangat yang antusias, kreatif dan bebas bergaul, yang selalu dapat menemukan alasan untuk tersenyum. Ramah, imajinatif, pandai berkomunikasi, dan bisa membaca kebutuhan orang lain.',
    'Psikolog, Entertainer, Pengajar, Motivator, Presenter, Reporter, MC, Seniman',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-34-38-017_com.android.chrome-300x300.png'
  ],
  [
    'ISTJ',
    'Ahli Logistik',
    'Individu yang praktis dan mengutamakan fakta, yang keandalannya tidak dapat diragukan. Serius, senang pada fakta, tekun, pendengar yang baik, memegang aturan.',
    'Polisi, Hakim, Pengacara, Dokter, Akuntan, Pemimpin Militer',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-42-35-171_com.android.chrome-300x300.png'
  ],
  [
    'ISFJ',
    'Si Pembela',
    'Pelindung yang sangat berdedikasi dan hangat, selalu siap membela orang yang dicintainya. penuh pertimbangan, serius, ramah, memiliki kemampuan mengorganisasi, detil, dan bisa diandalkan.',
    'Desainer, Konselor, Penjaga Toko/Perpustakaan, Dunia Perhotelan.',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-43-06-502_com.android.chrome-300x300.png'
  ],
  [
    'ESTJ',
    'Eksekutif',
    'Administrator istimewa, tidak ada duanya dalam mengelola sesuatu atau orang. Praktis, sistematis, disiplin, dan cenderung kaku.',
    'Militer, Manajer, Polisi, Hakim, Pengacara, Guru, Sales, Auditor, Akuntan',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-35-10-924_com.android.chrome-300x300.png'
  ],
  [
    'ESFJ',
    'Konsul',
    'Orang yang sangat peduli, sosial dan populer, selalu ingin membantu. Hangat, banyak bicara, membutuhkan keseimbangan, santai, sederhana, teliti, dan rajin merawat apa yang dimiliki.',
    'Perencana Keuangan, Perawat, Guru, Bidang anak-anak',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-35-41-247_com.android.chrome-300x300.png'
  ],
  [
    'ISTP',
    'Pengrajin',
    'Experimenter yang pemberani dan praktis, menguasai semua jenis alat. Tenang, cenderung kaku, logis, rasional, kritis, percaya diri, pemecah masalah yang baik.',
    'Polisi, Programmer, Ahli Komputer, Teknisi, Insinyur, Mekanik, Pilot, Atlet',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-43-32-692_com.android.chrome-300x300.png'
  ],
  [
    'ISFP',
    'Petualang',
    'Seniman yang fleksibel dan mengagumkan, selalu siap menjelajahi dan mengalami hal baru. Berpikiran praktis, menghindari konflik, cenderung tidak mau memimpin, santai.',
    'Seniman, Desainer, Pekerja Sosial, Psikolog, Guru, Aktor',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-43-52-621_com.android.chrome-300x300.png'
  ],
  [
    'ESTP',
    'Pengusaha',
    'Orang yang cerdas, bersemangat dan sangat tanggap, benar-benar menikmati hidup yang menantang. Spontan, aktif, enerjik, ceplas-ceplos, berkarisma, mudah beradaptasi.',
    'Marketing, Sales, Polisi, Pebisnis, Pialang Saham',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-36-28-149_com.android.chrome-300x300.png'
  ],
  [
    'ESFP',
    'Penghibur',
    'Orang yang spontan, bersemangat dan antusias, hidup tidak akan membosankan saat berdekatan dengan mereka. Mudah berteman, ramah, menyenangkan, optimis, ceria, suka menjadi pusat perhatian, menghindari konflik, cepat, dan praktis.',
    'Entertainer, Seniman, Marketing, Konselor, Desainer, Tour Guide',
    'https://campuspedia.id/news/wp-content/uploads/2020/02/Screenshot_2020-02-09-09-36-54-404_com.android.chrome-300x300.png'
  ]
];

class _MyAppState extends State<MyApp> {
  // SingingCharacter _character = SingingCharacter.lafayette;

  var kepribadian = '';
  var profesi = '';
  var trait = '';
  var keterangan = '';
  var gambar = '';

  String selectedRadioTile = '';

  var hasil = List(4);

  List<Widget> questions = [];

  _MyAppState() {
    questionsList();
  }

  void questionsList() {
    for (int i = 0; i < _pertanyaan.length; ++i) {
      int f = i + 1;
      questions.add(
        Container(
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(color: Colors.blue),
          width: double.infinity,
          child: Text(
            '$f. ' + _pertanyaan[i][0][0],
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

      questions.add(Container(
        child: Column(
          children: [
            RadioListTile(
              value: _pertanyaan[i][1][1],
              title: Text(_pertanyaan[i][1][0]),
              groupValue: selectedRadioTile,
              onChanged: (value) {
                hasil[i] = value;
                setState(() {
                  selectedRadioTile = value;
                });
              },
            ),
            RadioListTile(
              value: _pertanyaan[i][2][1],
              title: Text(_pertanyaan[i][2][0]),
              groupValue: selectedRadioTile,
              onChanged: (value) {
                hasil[i] = value;
                setState(() {
                  selectedRadioTile = value;
                });
              },
            ),
          ],
        ),
      ));
    }
  }

  void display() {
    kepribadian = '';
    for (int i = 0; i < hasil.length; i++) {
      kepribadian += hasil[i];
    }
    setState(() {
      for (var i = 0; i < _alignment.length; i++) {
        if (kepribadian == _alignment[i][0]) {
          kepribadian = _alignment[i][0];
          trait = _alignment[i][1];
          keterangan = _alignment[i][2];
          profesi = 'Profesi : ' + _alignment[i][3];
          gambar = _alignment[i][4];
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan listview"),
        ),
        body: ListView(children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            child: Text(
              'Cek Tipe Kepribadian Kamu',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            children: questions,
          ),
          // Column(
          //   children: <Widget>[
          //     ListTile(
          //       title: const Text('Lafayette'),
          //       leading: Radio<SingingCharacter>(
          //         value: SingingCharacter.lafayette,
          //         groupValue: _character,
          //         onChanged: (SingingCharacter value) {
          //           setState(() {
          //             _character = value;
          //           });
          //         },
          //       ),
          //     ),
          //     ListTile(
          //       title: const Text('Thomas Jefferson'),
          //       leading: Radio<SingingCharacter>(
          //         value: SingingCharacter.jefferson,
          //         groupValue: _character,
          //         onChanged: (SingingCharacter value) {
          //           setState(() {
          //             _character = value;
          //           });
          //         },
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              onPressed: display,
              color: Colors.amber,
              child: Text(
                'Kalkulasi',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  '$kepribadian',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$trait',
                  style: TextStyle(fontSize: 25),
                ),
                Image.network('$gambar'),
                Text('$keterangan'),
                Text(
                  '$profesi',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
