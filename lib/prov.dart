import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Prov with ChangeNotifier {
  int _taskStatus = 0;

  List<List<String>> _task = [
    [
      "Workout for 15 mintues",
      "Olahraga selama 15 menit adalah sesi latihan fisik yang singkat namun efektif untuk meningkatkan kebugaran dan kesehatan. Dalam waktu yang terbatas ini, Anda dapat melakukan berbagai jenis latihan yang menggabungkan gerakan kardio, kekuatan, dan fleksibilitas. Contoh olahraga selama 15 menit termasuk lari interval, latihan kekuatan tubuh dengan beban ringan atau berat badan, latihan HIIT (High-Intensity Interval Training), latihan aerobik seperti lompat tali atau bersepeda statis, atau bahkan sesi yoga singkat. Walaupun waktu terbatas, olahraga selama 15 menit dapat membantu meningkatkan energi, membakar kalori, menguatkan otot, meningkatkan kekuatan dan fleksibilitas, serta meningkatkan suasana hati dan konsentrasi. Penting untuk memilih olahraga yang sesuai dengan tingkat kebugaran dan tujuan Anda, dan pastikan untuk melakukan pemanasan dan pendinginan sebelum dan setelah sesi latihan.",
    ],
    [
      "Sleep 8 hours",
      "Manfaat tidur 8 jam juga dapat mengurangi risiko gangguan tidur, misalnya sleep apnea. Ini kemudian dapat berdampak pada kesehatan jantung secara menyeluruh. Hubungan antara kebiasaan tidur dan kesehatan mental sudah menjadi subjek penelitian sejak lama.",
    ],
    [
      "Do PAM HomeWork",
      "Mengerjakan tugas adalah suatu kegiatan yang dilakukan untuk mencapai berbagai tujuan dan memperluas pemahaman kita tentang suatu topik atau konsep. Melalui tugas, kita dapat mengembangkan kemampuan dan keterampilan yang diperlukan dalam kehidupan sehari-hari.Saat kita mengerjakan tugas, kita melibatkan diri dalam proses pemecahan masalah, penelitian, analisis, dan komunikasi. Tugas dapat melibatkan pencarian informasi, pengumpulan data, pemikiran kritis, dan kreativitas. Melalui tugas, kita diberi kesempatan untuk mendalami dan memahami materi yang sedang dipelajari dengan lebih baik."
    ]
  ];

  int get taskStatus => _taskStatus;
  List<List<String>> get task => _task;

  set settaskStatus(val) {
    _taskStatus = val;
    notifyListeners();
  }

  set settask(val) {
    _task = val;
    notifyListeners();
  }
}
