import 'package:flutter/material.dart';

class FemaleGenitalScreeen extends StatefulWidget {
  const FemaleGenitalScreeen({super.key});

  @override
  State<FemaleGenitalScreeen> createState() => _FemaleGenitalScreeenState();
}

class _FemaleGenitalScreeenState extends State<FemaleGenitalScreeen> {
  int? openDropdownIndex;

  List<String> options1 = [
    'Partial or total removal of the clitoris and/or the prepuce (clitoriectory)'
  ];
  List<String> options2 = ['Partial or total removal of the clitoris and the labia minora, with or without excision of the majora (excision)'];
  List<String> options3 = ['Narrowing of the vaginal orfice with creation of a covering seal by cutting and appositioning the labia minora and/ or the labia majora, with or without excision of the clitoris (infibulation)'];
    List<String> options4 = ['All other harmful procedures to the female genitalia for non-medical purpose, for example pricking, piercingm incising, scraping and cauterzation'];

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
        padding: const EdgeInsets.only(top: 30, left: 30, right: 10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Female Genital Mutilation", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 25),
                const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, ", style: TextStyle(color: Colors.black, fontSize: 14)),
               const SizedBox(height: 25,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDropdown(0, 'Type 1', options1),
                    const SizedBox(height: 15,),
                    _buildDropdown(1, 'Type 2', options2),

                                        const SizedBox(height: 15,),
                    _buildDropdown(2, 'Type 3', options3),

                                        const SizedBox(height: 15,),
                    _buildDropdown(3, 'Type 4', options4),
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
            width: 300,
            padding: const EdgeInsets.all(10),
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
                Text(title),
                Icon(isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        if (isOpen)
          Container(
            width: 300,
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
              children: options.map((option) {
                return ListTile(
                  title: Text(option, style: const TextStyle(fontSize: 14),textAlign:TextAlign.justify,),
                  onTap: () {
                    toggleDropdown(index); // Close dropdown on option selection
                    // Handle option selection
                  },
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}
