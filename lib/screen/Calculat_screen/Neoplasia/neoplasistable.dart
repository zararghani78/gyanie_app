import 'package:flutter/material.dart';

class NEOPLATABLE extends StatefulWidget {
  final List<String> tableColumn;
  final List<String>tablerow;
  final Color color;
  const NEOPLATABLE({super.key, required this.tableColumn, required this.color, required this.tablerow});

  @override
  State<NEOPLATABLE> createState() => _NEOPLATABLEState();
}

class _NEOPLATABLEState extends State<NEOPLATABLE> {
    int? selectedCellIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
     Container(
          width:double.infinity,
          height: 60,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 15, 111, 189),
            borderRadius:BorderRadius.only(
              topLeft:Radius.circular(10),
              topRight: Radius.circular(10)
            )
          ),
          child: DataTable(
      columns: const [
        DataColumn(label: Text(' 5',style: TextStyle(color: Colors.white),)),
        DataColumn(label: Text(' 4',style: TextStyle(color: Colors.white),)),
        DataColumn(label: Text(' 3',style: TextStyle(color: Colors.white),)),
        DataColumn(label: Text(' 2',style: TextStyle(color: Colors.white),)),
        DataColumn(label: Text('1',style: TextStyle(color: Colors.white),)),
      ],
      rows: List.generate(
        1,
        (rowIndex) => DataRow(
          cells: List.generate(
            5,
            (cellIndex) => DataCell(
              InkWell(
                onTap: () {
                  setState(() {
                    selectedCellIndex = cellIndex;
                  });
                },
                child: Container(
                  color: selectedCellIndex != null && selectedCellIndex == cellIndex
                      ? const Color.fromARGB(255, 15, 111, 189)
                      : Colors.transparent,
                  child: const Text('row'),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
        ),
      
      ],
    );
  }
}