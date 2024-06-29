import 'package:recipes_app/header_page.dart';
import 'dart:async';

class AddedToCartPage extends StatefulWidget {
  const AddedToCartPage({super.key});

  @override
  State<AddedToCartPage> createState() => _AddedToCartPageState();
}

class _AddedToCartPageState extends State<AddedToCartPage> {
  void initState() {
    Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        Navigator.pushNamed(context, Routes.homepage);
        timer.cancel();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.scale(
                scale: 1,
                child: Image.asset(
                  'lib/assets/gif/tick_animation.gif',
                ),
              ),
              const Text(
                'Added to Cart',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
              const Text(
                'Item is added to cart Enjoy further',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
