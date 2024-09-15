import 'package:flutter/material.dart';

class CARDIOTABLE extends StatefulWidget {
  const CARDIOTABLE({super.key});

  @override
  State<CARDIOTABLE> createState() => _CARDIOTABLEState();
}

class _CARDIOTABLEState extends State<CARDIOTABLE> {
  @override
  Widget build(BuildContext context) {
    return     
        SizedBox(
          width: 300,
          child: DataTable(
            dataRowHeight: 50,
            columnSpacing: 3,
                  showCheckboxColumn:true,
                  columns:  const <DataColumn>[
                    DataColumn(
                      label: SizedBox(
          width: 100,
          child: Column(
            children: [
              Text('Feature '),
              Text('on CTG '),
            ],
          ),
                      ),
                    ),
                   DataColumn(
            label: SizedBox(
              width: 100,
              child: Column(
                children: [
          LimitedBox(
            maxHeight: 48, // Limit the height to three lines
            child: Text(
              'Reassuringdsfdnffnnrtggr ',
              // Fade the text when it overflows
            ),
          ),
                ],
              ),
            ),
          ),
          
                    DataColumn(
                      label: Column(
                        children: [
                         Text('Non-Reassuring'),
                          Text("")
                        ],
                      ),
                    ),
                    // Add more DataColumn widgets as needed
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
          DataCell(Text('Oral')),
          DataCell(Column(
            children: [
              Text('COCP'),
              Text('POP'),
            ],
          )),
           DataCell(Column(
            children: [
              Text('0.1-1.5'),
              Text('1.5<3'),
            ],
          )),
          // Add more DataCell widgets as needed
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
          DataCell(Text('Intra-uterine')),
          DataCell(Column(
            children: [
              Text('IUS'),
              Text('IUSD'),
            ],
          )),
          DataCell(Text('0.1<3')),
          // Add more DataCell widgets as needed
                      ],
                    ),
                  
                     DataRow(
                      cells: <DataCell>[
          DataCell(Text('Intra-uterine')),
          DataCell(Text('')),
          DataCell(Text('0.1')),
          // Add more DataCell widgets as needed
                      ],
                    ),
                     DataRow(
                      cells: <DataCell>[
          DataCell(Column(
            children: [
              Text('Depo-'),
              Text('provera'),
            ],
          )),
          DataCell(Text('')),
          DataCell(Text('0.3-1')),
          // Add more DataCell widgets as needed
                      ],
                    ),
                  
                     DataRow(
                      cells: <DataCell>[
          DataCell(Text('Barriers')),
          DataCell(Text('Condom')),
          DataCell(Text('4-10,8-20')),
          // Add more DataCell widgets as needed
                      ],
                    ),
                     DataRow(
                      cells: <DataCell>[
          DataCell(Text('Sterilization')),
          DataCell(Text('')),
          DataCell(Text('<0.5')),
          // Add more DataCell widgets as needed
                      ],
                    ),
                  
                     DataRow(
                      cells: <DataCell>[
          DataCell(Text('Withdrawal')),
          DataCell(Text('')),
          DataCell(Text('10-20')),
          // Add more DataCell widgets as needed
                      ],
                    ),
                     DataRow(
                      cells: <DataCell>[
          DataCell(Column(
            children: [
              Text('Thermo-'),
              Text('regulation'),
            ],
          )),
          DataCell(Text('')),
          DataCell(Text('20-30')),
          // Add more DataCell widgets as needed
                      ],
                    ),
                    // Add more DataRow widgets as needed
                  ],
          ),
        )

         ;
  }
}