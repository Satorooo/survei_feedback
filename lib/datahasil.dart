import 'package:flutter/material.dart';
import 'package:survei_feedback/model.dart';

class datahasil extends StatefulWidget {
  const datahasil({super.key});

  @override
  State<datahasil> createState() => _datahasilState();
}

class _datahasilState extends State<datahasil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Hasil'),
        backgroundColor: Colors.blueAccent,
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
