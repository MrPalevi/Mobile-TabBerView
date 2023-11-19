import 'package:flutter/material.dart';

// Kelas TourismPlace
class TourismPlace {
  final String imageAsset;

  TourismPlace({
    required this.imageAsset,
  });
}


List<TourismPlace> tourismPlaceList = [
  TourismPlace(imageAsset: 'assets/images/farm-house.jpg'),
  TourismPlace(imageAsset: 'assets/images/bosscha.jpg'),
  TourismPlace(imageAsset: 'assets/images/jalan-asia-afrika.jpg'),

];


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tugas Pertemuan 10'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Gambar'),
              Tab(text: 'Harga'),
              Tab(text: 'Keterangan'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Isi dari Tab 1
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, 
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
              itemCount: tourismPlaceList.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                  tourismPlaceList[index].imageAsset,
                  fit: BoxFit.cover, // Penyesuaian gambar
                );
              },
            ),
            // Isi dari Tab 2
            Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffF2F2F2), width: 1)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    width: 550,
                    height: 540,
                    child: DataTable(
                      columns: const <DataColumn>[
                        DataColumn(label: Text("Nama")),
                        DataColumn(label: Text("Lokasi")),
                        DataColumn(label: Text("Harga")),
                        DataColumn(label: Text("Jam")),
                      ],
                      rows: <DataRow>[
                        DataRow(cells: <DataCell>[
                          DataCell(Text("Farm House")),
                          DataCell(Text("Lembang")),
                          DataCell(Text("Rp. 2500")),
                          DataCell(Text("09:00-20:00")),
                        ]),
                        DataRow(cells: <DataCell>[
                          DataCell(Text("Observation Bosscha")),
                          DataCell(Text("Lembang")),
                          DataCell(Text("Rp 20000")),
                          DataCell(Text("09:00-15:00")),
                        ]),
                        DataRow(cells: <DataCell>[
                          DataCell(Text("Jalan Asia Afrika")),
                          DataCell(Text("Bandung")),
                          DataCell(Text("Free")),
                          DataCell(Text("24 Jam")),
                        ]),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Isi dari Tab 3
            Center(
                child: Column(children: <Widget>[
              Text(
                'Farm House',
                style:
                    TextStyle(
                      fontSize: 24,
                      fontFamily: "Serif", 
                      height: 2.0, ),
              ),
              Text(
                'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                textAlign: TextAlign.center,
              ),
                            Text(
                'Observation Bosscha',
                style:
                    TextStyle(
                      fontSize: 24,
                      fontFamily: "Serif", 
                      height: 2.0, ),
              ),
              Text(
                'Memiliki beberapa teleskop, antara lain, Refraktor Ganda Zeiss, Schmidt Bimasakti, Refraktor Bamberg, Cassegrain GOTO, dan Teleskop Surya. Refraktor Ganda Zeiss adalah jenis teleskop terbesar untuk meneropong bintang. Benda ini diletakkan pada atap kubah sehingga saat teropong digunakan, atap tersebut harus dibuka. Observatorium Bosscha boleh dikunjungi oleh siapa pun, tanpa tiket. Namun, bagi yang ingin menggunakan teleskop Zeiss, wajib mendaftarkan diri. Untuk instansi atau lembaga pendidikan, diberikan jadwal hari Selasa sampai Jumat. Sementara itu, kunjungan individu dibuka setiap hari Sabtu.',
                textAlign: TextAlign.center,
              ),
                            Text(
                'Jalan Asia Afrika',
                style:
                    TextStyle(
                      fontSize: 24,
                      fontFamily: "Serif", 
                      height: 2.0, ),
              ),
              Text(
                'Jalan Asia Afrika di Bandung memiliki kaitan yang sangat erat dengan pendirian kota Kembang ini. Karena pada saat itu, Gubernur Jenderal Herman Willem Deaendels dari Belanda menancapkan tongkatnya saat memerintahkan pendirian kota ini, yang kemudian diabadikan menjadi tugu Bandung Nol Kilometer.',
                textAlign: TextAlign.center,
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
