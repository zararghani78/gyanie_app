import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gyanie_app/screen/Classification/Tanner/Teanner_row.dart';
import 'package:gyanie_app/screen/Classification/Tanner/subtanner.dart';

class TANNERCONTAINER extends StatefulWidget {
  const TANNERCONTAINER({super.key});

  @override
  State<TANNERCONTAINER> createState() => _TANNERCONTAINERState();
}

class _TANNERCONTAINERState extends State<TANNERCONTAINER> {
   List<String> options1 = [
    'Partial or total removal of the clitoris and/or the prepuce (clitoriectory)'
  ];
  List<String> options2 = ['Partial or total removal of the clitoris and the labia minora, with or without excision of the majora (excision)'];
  List<String> options3 = ['Narrowing of the vaginal orfice with creation of a covering seal by cutting and appositioning the labia minora and/ or the labia majora, with or without excision of the clitoris (infibulation)'];
    List<String> options4 = ['All other harmful procedures to the female genitalia for non-medical purpose, for example pricking, piercingm incising, scraping and cauterzation'];

    List<String> options5 = ['Partial or total removal of the clitoris and the labia minora, with or without excision of the majora (excision)'];

    int? openDropdownIndex;
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
    return   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDropdown(0, 'Tanner Stage 1', options1),
                    const SizedBox(height: 15,),
                    _buildDropdowntwo(1, 'Tanner Stage 2', options2),

                                        const SizedBox(height: 15,),
                    _buildDropdownthree(2, 'Tanner Stage 3', options3),
                         const SizedBox(height: 15,),
                    _buildDropdownfour(3, 'Tanner Stage 4', options4),


                                        const SizedBox(height: 15,),
                    _buildDropdownfive(4, 'Tanner Stage 5', options5),

                    const SizedBox(height: 25,),

                   

        


                  ],
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
                Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
                Icon(isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        if (isOpen)
        
        Container(
  width: 300,
  decoration: BoxDecoration(
    border: Border.all(
      color: isOpen ? const Color.fromARGB(255, 15, 111, 189) : Colors.grey.shade200,
    ),
    borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(5),
      bottomRight: Radius.circular(5),
    ),
  ),
  child: Column(
    children: [
      ...options.map((option) {
        return ListTile(
          title: Text(option, style: const TextStyle(fontSize: 14), textAlign: TextAlign.justify),
          onTap: () {
            toggleDropdown(index); // Close dropdown on option selection
            // Handle option selection
          },
        );
      }),
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
       
            Padding(
            padding: const EdgeInsets.only(left: 20),
           // padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
            Container(
              
              width:5 ,
              height:5,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(width: 10,),
            const Text("data"),
              ],
            ),
          ),

            Padding(
            padding: const EdgeInsets.only(left: 20),
           // padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
            Container(
              
              width:5 ,
              height:5,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(width: 10,),
            const Text("data"),
              ],
            ),
          ),
            Padding(
            padding: const EdgeInsets.only(left: 20),
           // padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
            Container(
              
              width:5 ,
              height:5,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(width: 10,),
            const Text("data"),
              ],
            ),
          ),
            Padding(
            padding: const EdgeInsets.only(left: 20),
           // padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
            Container(
              
              width:5 ,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(width: 10,),
            const Text("data"),
              ],
            ),
          )
         ],
      )
    ],
  ),
),

         
      ],
    );
  }



  Widget _buildDropdowntwo(int index, String title, List<String> options) {
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
                Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
                Icon(isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        if (isOpen)
 
        Container(
  width: 300,
  decoration: BoxDecoration(
    border: Border.all(
      color: isOpen ? const Color.fromARGB(255, 15, 111, 189) : Colors.grey.shade200,
    ),
    borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(5),
      bottomRight: Radius.circular(5),
    ),
  ),
  child: Column(
    children: [
      ...options.map((option) {
        return ListTile(
          title: Text(option, style: const TextStyle(fontSize: 14), textAlign: TextAlign.justify),
          onTap: () {
            toggleDropdown(index); // Close dropdown on option selection
            // Handle option selection
          },
        );
      }),
const SUBTANNERSCREEN(),
    ],
  ),
),

      ],
    );
  }


  Widget _buildDropdownthree(int index, String title, List<String> options) {
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
                Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
                Icon(isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        if (isOpen)
 
        Container(
  width: 300,
  decoration: BoxDecoration(
    border: Border.all(
      color: isOpen ? const Color.fromARGB(255, 15, 111, 189) : Colors.grey.shade200,
    ),
    borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(5),
      bottomRight: Radius.circular(5),
    ),
  ),
  child: Column(
    children: [
      ...options.map((option) {
        return ListTile(
          title: Text(option, style: const TextStyle(fontSize: 14), textAlign: TextAlign.justify),
          onTap: () {
            toggleDropdown(index); // Close dropdown on option selection
            // Handle option selection
          },
        );
      }),
const SUBTANNERSCREEN(),
    ],
  ),
),

      ],
    );
  }


  Widget _buildDropdownfour(int index, String title, List<String> options) {
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
                Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
                Icon(isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        if (isOpen)
 
        Container(
  width: 300,
  decoration: BoxDecoration(
    border: Border.all(
      color: isOpen ? const Color.fromARGB(255, 15, 111, 189) : Colors.grey.shade200,
    ),
    borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(5),
      bottomRight: Radius.circular(5),
    ),
  ),
  child: Column(
    children: [
      ...options.map((option) {
        return ListTile(
          title: Text(option, style: const TextStyle(fontSize: 14), textAlign: TextAlign.justify),
          onTap: () {
            toggleDropdown(index); // Close dropdown on option selection
            // Handle option selection
          },
        );
      }),
      const SUBTANNERSCREEN(),
    ],
  ),
),

      ],
    );
  }


  Widget _buildDropdownfive(int index, String title, List<String> options) {
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
                Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
                Icon(isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        if (isOpen)
 
        Container(
  width: 300,
  decoration: BoxDecoration(
    border: Border.all(
      color: isOpen ? const Color.fromARGB(255, 15, 111, 189) : Colors.grey.shade200,
    ),
    borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(5),
      bottomRight: Radius.circular(5),
    ),
  ),
  child: Column(
    children: [
      ...options.map((option) {
        return ListTile(
          title: Text(option, style: const TextStyle(fontSize: 14), textAlign: TextAlign.justify),
          onTap: () {
            toggleDropdown(index); // Close dropdown on option selection
            // Handle option selection
          },
        );
      }),
const SUBTANNERSCREEN(),
    ],
  ),
),

      ],
    );
  }


}