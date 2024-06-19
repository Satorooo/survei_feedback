import 'package:flutter/material.dart';
import 'package:survei_feedback/model.dart';

class hasil_page extends StatefulWidget {
  const hasil_page({super.key});

  @override
  State<hasil_page> createState() => _hasil_pageState();
}

class _hasil_pageState extends State<hasil_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Hasil'),
        backgroundColor: Colors.teal,
      ),
      body: DataTable(
        columns: const [
          DataColumn(label: Text('Nama Dosen')),
          DataColumn(label: Text('Pertanyaan 1')),
          DataColumn(label: Text('Pertanyaan 2')),
          DataColumn(label: Text('Pertanyaan 3')),
          DataColumn(label: Text('Pertanyaan 4')),
          DataColumn(label: Text('Pertanyaan 5')),
          DataColumn(label: Text('Saran')),
        ],
        rows: listhasil.map((e) {
          return DataRow(cells: [
            DataCell(Text(e.dosen)),
            DataCell(Text(e.point1)),
            DataCell(Text(e.point2)),
            DataCell(Text(e.point3)),
            DataCell(Text(e.point4)),
            DataCell(Text(e.point5)),
            DataCell(Text(e.saran))
          ]);
        }).toList(),
      ),
    );
  }
}
