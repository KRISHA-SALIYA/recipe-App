import 'package:recipes_app/header_page.dart';
import 'package:recipes_app/utils/routes.dart';
import 'package:recipes_app/views/screens/add_to_cart_page.dart';
import 'package:recipes_app/views/screens/home_page.dart';
import 'package:recipes_app/views/screens/splash_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class ChangeNotifierProvider {}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: Routes.instance.allRoutes,
      routes: {
        Routes.splashscreen: (context) => const SplashScreen(),
        Routes.homepage: (context) => const HomePage(),
        Routes.favoritepage: (context) => const FavoritePage(),
        Routes.addedToCartPage: (context) => const AddedToCartPage(),
      },
    );
  }
}
