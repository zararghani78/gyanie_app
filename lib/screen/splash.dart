
import 'package:flutter/material.dart';
import 'package:gyanie_app/screen/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const Splashscreentwo(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.1, 0.0); // Slide in from top
            const end = Offset.zero;
            const curve = Curves.easeOutCubic; // Use a slower curve
            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        //  transitionDuration: const Duration(seconds: 1), // Set a longer duration
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 111, 189),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is splash screen"),
          ],
        ),
      ),
    );
  }
}


class Splashscreentwo extends StatefulWidget {
  const Splashscreentwo({super.key});

  @override
  State<Splashscreentwo> createState() => _SplashscreentwoState();
}

class _SplashscreentwoState extends State<Splashscreentwo> {
   @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const HomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0); // Slide in from right
            const end = Offset.zero;
            const curve = Curves.easeOutCubic; // Use a slower curve
            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
          // transitionDuration: const Duration(seconds: 1), // Set a longer duration
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is splash screen two"),
          ],
        ),
      ),
    );
  }
}
