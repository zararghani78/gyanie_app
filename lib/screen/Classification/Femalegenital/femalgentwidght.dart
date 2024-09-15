import 'package:flutter/material.dart';

class FEMALEGENTABLE extends StatefulWidget {
  const FEMALEGENTABLE({super.key});

  @override
  State<FEMALEGENTABLE> createState() => _FEMALEGENTABLEState();
}

class _FEMALEGENTABLEState extends State<FEMALEGENTABLE> {
    bool isOpen = false;
  List<String> options = ['Partial or total removal pf the clitoris and/or the prepuce (clitoriectory)'];

  void toggleDropdown() {
    setState(() {
      isOpen = !isOpen;
    });
  }

  @override

  Widget build(BuildContext context) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: toggleDropdown,
                      child: Container(
                        width: 300,
                        padding: const EdgeInsets.all(10),
                         decoration: BoxDecoration(
                          border: Border.all(color: isOpen?const Color.fromARGB(255, 15, 111, 189) : Colors.grey.shade200),
                          borderRadius:isOpen?  const BorderRadius.only(
                            topLeft:Radius.circular(5),
                            topRight: Radius.circular(5),
                          ): BorderRadius.circular(5),
                          color: isOpen ?const Color.fromARGB(255, 15, 111, 189): Colors.grey.shade200  // Change background color when open
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Type 1'),
                          Icon(isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    if (isOpen)
                      Container(
                        width: 300,
                                               decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(255, 18, 91, 151)),
                          borderRadius: const BorderRadius.only(
                             bottomLeft:Radius.circular(5),
                            bottomRight: Radius.circular(5),),
                          color: isOpen ? Colors.grey.shade200 : Colors.transparent, // Change background color when open
                        ),

                        child: Column(
                          children: options.map((option,) {
                            return ListTile(
                              title: Text(option, style: const TextStyle(fontSize: 14),),
                              onTap: () {
                                toggleDropdown(); // Close dropdown on option selection
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