import 'package:flutter/material.dart';
import 'package:gyanie_app/screen/Calculat_screen/GestationPage/gestaion_main.dart';
import 'package:gyanie_app/screen/Calculat_screen/GestationPage/lpm_screen.dart';

class MAINGESTATIONSCREEN extends StatefulWidget {
  const MAINGESTATIONSCREEN({
    super.key,
    this.height = kToolbarHeight,
    this.onFavoriteChanged,
  });
  final double height;
  final Function(bool)? onFavoriteChanged;
 

  @override
  State<MAINGESTATIONSCREEN> createState() => _MAINGESTATIONSCREENState();
  Size get preferredSize => Size.fromHeight(height);
}

class _MAINGESTATIONSCREENState extends State<MAINGESTATIONSCREEN> {
  late TextEditingController _controller;
bool pagecolor=false;
  bool isFavorite = false;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _pageController = PageController(initialPage: 0);
  }
  int _selectedIndex = 0; 

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
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.white : Colors.white, // Change color based on favorite status
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite; // Toggle favorite status
                if (widget.onFavoriteChanged != null) {
                  widget.onFavoriteChanged!(isFavorite);
                }
              });
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: const Color.fromARGB(255, 15, 111, 189),
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child:
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = 0; // Update the selected index to 0 (LPM)
        });
        _pageController.animateToPage(0, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      },
      child: Container(
        width: 120,
        decoration: BoxDecoration(
 color: _selectedIndex == 0 ? Colors.white : const Color.fromARGB(255, 15, 111, 189),
 borderRadius: const BorderRadius.only(
topLeft: Radius.circular(10),
topRight: Radius.circular(10)

 )
        ),
       // Change color based on selected index
        alignment: Alignment.center,
        child: Text(
          "LPM",
          style: TextStyle(
            color: _selectedIndex == 0 ? Colors.black : Colors.white, // Change text color based on selected index
          ),
        ),
      ),
    ),
    GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = 1; // Update the selected index to 1 (Ultrasound)
        });
        _pageController.animateToPage(1, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      },
      child: Container(
        width: 120,
                decoration: BoxDecoration(
 color: _selectedIndex == 1? Colors.white : const Color.fromARGB(255, 15, 111, 189), 
 borderRadius: const BorderRadius.only(
topLeft: Radius.circular(10),
topRight: Radius.circular(10)

 )
        ), // Change color based on selected index
        alignment: Alignment.center,
        child: Text(
          "Ultrasound",
          style: TextStyle(
            color: _selectedIndex == 1 ? Colors.black : Colors.white, // Change text color based on selected index
          ),
        ),
      ),
    ),
  ],
),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                Container(
                  color: Colors.red,
                  child: const LPMSCREEN(),
                ),
                Container(
                  color: Colors.green,
                  child: const GestationMain(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
