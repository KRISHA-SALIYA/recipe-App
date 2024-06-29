import 'package:recipes_app/header_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        Navigator.pushReplacementNamed(context, Routes.homepage);
        timer.cancel();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00ff0000),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://i.pinimg.com/originals/7c/3f/f2/7c3ff260ade36e77bfb7924fa71f1cf6.gifhttps://i.pinimg.com/originals/7c/3f/f2/7c3ff260ade36e77bfb7924fa71f1cf6.gif',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
