import 'dart:ui';
import 'package:flutter/material.dart';

import 'Hasil.dart';
import 'Judul.dart';
import 'ListPertanyaan.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

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
  List<String> _score = List<String>();
  var hasil = List(4);

  void stateMethod() {
    setState(() {});
  }

  var analisis = {
    'Tipe': '',
    'Karakter': '',
    'Keterangan': '',
    'Profesi': '',
    'Gambar': ''
  };

  void display() {
    analisis['Tipe'] = '';
    for (int i = 0; i < hasil.length; i++) analisis['Tipe'] += hasil[i];
    setState(() {
      for (var i = 0; i < _alignment.length; i++) {
        if (analisis['Tipe'] == _alignment[i][0]) {
          analisis['Karakter'] = _alignment[i][1];
          analisis['Keterangan'] = _alignment[i][2];
          analisis['Profesi'] = 'Profesi : ' + _alignment[i][3];
          analisis['Gambar'] = _alignment[i][4];
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff252c48),
        appBar: AppBar(
          title: Text("Latihan listview"),
        ),
        body: ListView(children: [
          Judul(),
          ListPertanyaan(
              pertanyaan: _pertanyaan,
              score: _score,
              hasil: hasil,
              stateMethod: stateMethod),
          Kalkulasi(),
          Hasil(analisis: analisis)
        ]),
      ),
    );
  }

  SizedBox Kalkulasi() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: display,
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          padding: EdgeInsets.symmetric(vertical: 20),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
          ),
        ),
        child: Text(
          'Kalkulasi',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
