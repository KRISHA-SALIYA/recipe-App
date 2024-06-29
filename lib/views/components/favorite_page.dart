import 'package:recipes_app/header_page.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Scaffold(
      // backgroundColor: Color(0xff283138),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://static.vecteezy.com/system/resources/previews/023/642/088/original/wishlist-in-smartphone-app-gift-and-shopping-list-tiny-woman-writing-down-wishes-personal-favourites-list-order-and-payment-modern-flat-cartoon-style-illustration-on-white-background-vector.jpg",
            ),
          ),
        ),
        alignment: const Alignment(0, 0.5),
        child: const Text(
          ' " Your favorite list is empty. " ',
          style: TextStyle(
            color: Color(0xFF2B2F33),
            fontSize: 20.50,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
            height: 0.13,
          ),
        ),
      ),
    );
  }
}
