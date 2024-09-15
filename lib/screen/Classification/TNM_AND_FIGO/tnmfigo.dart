import 'package:flutter/material.dart';

class TNMANDFIGOSCREEN extends StatefulWidget {
  const TNMANDFIGOSCREEN({super.key});

  @override
  State<TNMANDFIGOSCREEN> createState() => _TNMANDFIGOSCREENState();
}

class _TNMANDFIGOSCREENState extends State<TNMANDFIGOSCREEN> {
  final String colmntext =
      'The pelvic Organ Prolaps Qualification (POPQ) system is based on the position of the most distal portion of the prolapse during straing and is graded as follows:';
  final String colmntext2 = 'TNM FIGO';
  final String colmntext3 = 'Description';

  final String colmntext4 = 'qqqqqxxx';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back', style: TextStyle(color: Colors.white, fontSize: 18)),
        backgroundColor: const Color.fromARGB(255, 15, 111, 189),
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // This will go back when the icon is clicked
          },
        ),
        leadingWidth: 30,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                const Text("TNM and FIGO FOR OVARIAN CANCERS", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20,),
            const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, ",style: TextStyle(color: Colors.black,fontSize: 14,),),
          const SizedBox(height: 10,),
            const Text("Primary tumor (T)",style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),),
           const Divider(
            height: 1,
            color: Colors.black,
           ),
              DataTable(
                columns: [
                  DataColumn(label: SizedBox(width: 75, child: Text(colmntext2))),
                  DataColumn(label: SizedBox(width: 2, child: const Text(""))),
                  DataColumn(label: SizedBox(width: 2, child: const Text(""))),
                ],
                rows: [
                 
                  const DataRow(cells: [
                    DataCell(Text("TNM")),
                    DataCell(Text('No proiapse')),
                    DataCell(Text("")),
                  ]),
                  DataRow(cells: [
                    DataCell(SizedBox(width: 50, child: const Text('T0'))),
                    DataCell(SizedBox(width: 200, child: const Text('>1 cm above hymen.'))),
                     const DataCell(Text("")),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('T1     I')),
                    DataCell(SizedBox(width: 150, child: const Text('within 1 cm (proxiamal or distal) to the plane of the hymen'))),
                 const DataCell(Text("")),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('T1a      IA')),
                    DataCell(SizedBox(width: 150, child: const Text('>1 cm below the plane of the hymen but protrude< 2 cm less than the total lenghth of the vagina'))),
                  const DataCell(Text("")),
                  ]),
                  const DataRow(cells: [
                    DataCell(Text('T1b     IB')),
                    DataCell(Text('Complete eversion of the vagina.')),
                 DataCell(Text("")),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('T1c     IC')),
                    DataCell(SizedBox(width: 150, child: const Text('within 1 cm (proxiamal or distal) to the plane of the hymen'))),
                 const DataCell(Text("")),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('T1c1       Ic1')),
                    DataCell(SizedBox(width: 150, child: const Text('>1 cm below the plane of the hymen but protrude< 2 cm less than the total lenghth of the vagina'))),
                 const DataCell(Text("")),
                  ]),
                  const DataRow(cells: [
                    DataCell(Text('T1c2      IC2')),
                    DataCell(Text('Complete eversion of the vagina.')),
                   DataCell(Text("")),
                  ]),


                   DataRow(cells: [
                    const DataCell(Text('T1c1       Ic3')),
                    DataCell(SizedBox(width: 150, child: const Text('>1 cm below the plane of the hymen but protrude< 2 cm less than the total lenghth of the vagina'))),
                 const DataCell(Text("")),
                  ]),
                  const DataRow(cells: [
                    DataCell(Text('T2     II')),
                    DataCell(Text('Complete eversion of the vagina.')),
                   DataCell(Text("")),
                  ]),

                   DataRow(cells: [
                    const DataCell(Text('T2a   IIA')),
                    DataCell(SizedBox(width: 150, child: const Text('>1 cm below the plane of the hymen but protrude< 2 cm less than the total lenghth of the vagina'))),
                 const DataCell(Text("")),
                  ]),
                  const DataRow(cells: [
                    DataCell(Text('T2b    IIB')),
                    DataCell(Text('Complete eversion of the vagina.')),
                   DataCell(Text("")),
                  ]),
                    DataRow(cells: [
                    const DataCell(Text('T3  III')),
                    DataCell(SizedBox(width: 150, child: const Text('>1 cm below the plane of the hymen but protrude< 2 cm less than the total lenghth of the vagina'))),
                 const DataCell(Text("")),
                  ]),
                  const DataRow(cells: [
                    DataCell(Text('T3a    IIIA2')),
                    DataCell(Text('Complete eversion of the vagina.')),
                   DataCell(Text("")),
                  ]),
                    const DataRow(cells: [
                    DataCell(Text('T3b    IIIB')),
                    DataCell(Text('Complete eversion of the vagina.')),
                   DataCell(Text("")),
                  ]),
                    DataRow(cells: [
                    const DataCell(Text('T3c   IIIC')),
                    DataCell(SizedBox(width: 150, child: const Text('>1 cm below the plane of the hymen but protrude< 2 cm less than the total lenghth of the vagina'))),
                 const DataCell(Text("")),
                  ]),
                  
                  // Add more rows as needed
                ],
              ),

              const SizedBox(height: 10,),
            const Text("Regional lymph nodes (N)",style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),),
           const Divider(
            height: 1,
            color: Colors.black,
           ),
              DataTable(
                columns: [
                  DataColumn(label: SizedBox(width: 75, child: Text(colmntext2))),
                  DataColumn(label: SizedBox(width: 2, child: const Text(""))),
                  DataColumn(label: SizedBox(width: 2, child: const Text(""))),
                ],
                rows: [
                 
                  const DataRow(cells: [
                    DataCell(Text("NX")),
                    DataCell(Text('No ')),
                    DataCell(Text("")),
                  ]),
                  DataRow(cells: [
                    DataCell(SizedBox(width: 50, child: const Text('NO(i+)'))),
                    DataCell(SizedBox(width: 200, child: const Text('>1 cm above hymen.'))),
                     const DataCell(Text("")),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('N1 IIIA1')),
                    DataCell(SizedBox(width: 150, child: const Text('within 1 cm (proxiamal or distal) to the plane of the hymen'))),
                 const DataCell(Text("")),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('N1a   IIIAli')),
                    DataCell(SizedBox(width: 150, child: const Text('>1 cm below the plane of the hymen but protrude< 2 cm less than the total lenghth of the vagina'))),
                  const DataCell(Text("")),
                  ]),
                  const DataRow(cells: [
                    DataCell(Text('N1a    lllAlii')),
                    DataCell(Text('Complete eversion of the vagina.')),
                 DataCell(Text("")),
                  ]),
                  
                  // Add more rows as needed
                ],
              ),
                   const SizedBox(height: 10,),
            const Text("Distant metastasis (M)",style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),),
           const Divider(
            height: 1,
            color: Colors.black,
           ),
              DataTable(
                columns: [
                  DataColumn(label: SizedBox(width: 75, child: Text(colmntext2))),
                  DataColumn(label: SizedBox(width: 2, child: const Text(""))),
                  DataColumn(label: SizedBox(width: 2, child: const Text(""))),
                ],
                rows: [
                 
                  const DataRow(cells: [
                    DataCell(Text("MO")),
                    DataCell(Text('No ')),
                    DataCell(Text("")),
                  ]),
                  DataRow(cells: [
                    DataCell(SizedBox(width: 50, child: const Text('M1  IV'))),
                    DataCell(SizedBox(width: 200, child: const Text('>1 cm above hymen.'))),
                     const DataCell(Text("")),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('M1a   IVA')),
                    DataCell(SizedBox(width: 150, child: const Text('within 1 cm (proxiamal or distal) to the plane of the hymen'))),
                 const DataCell(Text("")),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('M!b   IVB')),
                    DataCell(SizedBox(width: 150, child: const Text('>1 cm below the plane of the hymen but protrude< 2 cm less than the total lenghth of the vagina'))),
                  const DataCell(Text("")),
                  ]),
                
                  
                  // Add more rows as needed
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
