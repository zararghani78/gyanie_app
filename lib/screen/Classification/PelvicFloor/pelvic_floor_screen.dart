import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PELVICFLOORSCREEN extends StatefulWidget {
  const PELVICFLOORSCREEN({super.key});

  @override
  State<PELVICFLOORSCREEN> createState() => _PELVICFLOORSCREENState();
}

class _PELVICFLOORSCREENState extends State<PELVICFLOORSCREEN> {
  int? openDropdownIndex;

  List<String> options1 = [
    'Partial or total removal of the clitoris and/or the prepuce (clitoriectory)'
  ];
  List<String> options2 = ['Partial or total removal of the clitoris and the labia minora, with or without excision of the majora (excision)'];
final String colmntext='The pelvic Organ Prolaps Qualification (POPQ) system is based on the position of the most distal portion of the prolapse during straing and is graded as follows:';
final String colmntext2='Grade';
final String colmntext3='Description';

final String colmntext4='qqqqqxxx';

  void toggleDropdown(int index) {
    setState(() {
      if (openDropdownIndex == index) {
        openDropdownIndex = null; // Close the dropdown if it's already open
      } else {
        openDropdownIndex = index; // Open the clicked dropdown
      }
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 15, right: 10),
        child: ListView(
          children: [
            Column(
            //  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Pelvic Floor Dysfunction", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
              //  const SizedBox(height: 25),
                //const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, ", style: TextStyle(color: Colors.black, fontSize: 14)),
               const SizedBox(height: 25,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDropdown(0, 'POP  SCORING SYSTEM (Pelvic organ prolapse Quantification)', options1),
                    const SizedBox(height: 15,),
                    _buildtwoDropdown(1, 'Baden-walker or Beecham classification system', options2),


                    const SizedBox(height: 25,),


             

                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown(int index, String title, List<String> options) {
    final isOpen = openDropdownIndex == index;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => toggleDropdown(index),
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: isOpen ? const Color.fromARGB(255, 15, 111, 189) : Colors.grey.shade200),
              borderRadius: isOpen ? const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ) : BorderRadius.circular(5),
              color: isOpen ? const Color.fromARGB(255, 15, 111, 189) : Colors.grey.shade200,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 270,
                  padding: const EdgeInsets.all(3.0),
                  child: Text(title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                ),
                Icon(isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        if (isOpen)
          Container(
              width: 320,
            decoration:  BoxDecoration(
              border: Border.all(
              color: isOpen ? const Color.fromARGB(255, 15, 111, 189) : Colors.grey.shade200
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 300,
                    child: Text( colmntext,style: const TextStyle(fontSize: 12),)),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DataTable(
                  columns: [
                    DataColumn(label: SizedBox(
                      width: 100, child: Text(colmntext2))),
                    DataColumn(label: SizedBox(
                      width: 200,
                      child: Text(colmntext3))),
                   
                  ],
                  rows: options.map((option) {
                    return const DataRow(
                      cells: [
                        DataCell(Text("0")),
                        DataCell(Text('No proiapse')),
                        
                      ],
                    );
                             
                  
                    }).toList() +
                    [
                      DataRow(cells: [
                        DataCell(SizedBox(
                          
                          width: 50,
                          child: const Text('1'))),
                        DataCell(SizedBox(
                          width: 200,
                        
                          child: const Text('>1 cm above hymen.'))),
                      ]),
                      DataRow(cells: [
                        const DataCell(Text('2')),
                        DataCell(SizedBox(
                          width: 150,
                          child: const Text('within 1 cm (proxiamal or distal) to the plane of the hymen'))),
                      ]),
                  
                  
                       DataRow(cells: [
                        const DataCell(Text('3')),
                        DataCell(SizedBox(
                          width: 150,
                          child: const Text('>1 cm below the plane of the hymen but protrude< 2 cm less than the total lenghth of the vagina'))),
                      ]),
                      
                       const DataRow(cells: [
                        DataCell(Text('4')),
                        DataCell(Text('Complete eversion of the vagina.')),
                      ]),
                      // Add more rows as needed
                    ],
                  ),
                ),
             
              ],
            ),
          ),
      ],
    );
  }

  
  Widget _buildtwoDropdown(int index, String title, List<String> options) {
    final isOpen = openDropdownIndex == index;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => toggleDropdown(index),
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: isOpen ? const Color.fromARGB(255, 15, 111, 189) : Colors.grey.shade200),
              borderRadius: isOpen ? const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ) : BorderRadius.circular(5),
              color: isOpen ? const Color.fromARGB(255, 15, 111, 189) : Colors.grey.shade200,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 270,
                  padding: const EdgeInsets.all(3.0),
                  child: Text(title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                ),
                Icon(isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        if (isOpen)
          Container(
              width: 320,
            decoration:  BoxDecoration(
              border: Border.all(
              color: isOpen ? const Color.fromARGB(255, 15, 111, 189) : Colors.grey.shade200
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 300,
                    child: Text( colmntext,style: const TextStyle(fontSize: 12),)),
                ),
                DataTable(
                columns: [
                  DataColumn(label: SizedBox(
                    width: 100, child: Text(colmntext2))),
                  DataColumn(label: SizedBox(
                    width: 200,
                    child: Text(colmntext3))),
                 
                ],
                rows: options.map((option) {
                  return const DataRow(
                    cells: [
                      DataCell(Text("0")),
                      DataCell(Text('No proiapse')),
                      
                    ],
                  );
                           
                
                  }).toList() +
  [
    DataRow(cells: [
      DataCell(SizedBox(
        width: 100,
        child: const Text('1'))),
      const DataCell(Text('>1 cm above hymen.')),
    ]),
    DataRow(cells: [
      const DataCell(Text('2')),
      DataCell(SizedBox(
        width: 150,
        child: const Text('within 1 cm (proxiamal or distal) to the plane of the hymen'))),
    ]),


     DataRow(cells: [
      const DataCell(Text('3')),
      DataCell(SizedBox(
        width: 150,
        child: const Text('>1 cm below the plane of the hymen but protrude< 2 cm less than the total lenghth of the vagina'))),
    ]),
    
     const DataRow(cells: [
      DataCell(Text('4')),
      DataCell(Text('Complete eversion of the vagina.')),
    ]),
    // Add more rows as needed
  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
