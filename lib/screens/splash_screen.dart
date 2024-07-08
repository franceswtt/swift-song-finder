import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(seconds: 1),
    )..forward();

    final animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );

    useEffect(() {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacementNamed(context, '/home');
      });
      return;
    }, []);

    return Scaffold(
      body: FadeTransition(
        opacity: animation,
        child: Center(
          child: Image.asset(
            'resources/images/splash.webp',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
