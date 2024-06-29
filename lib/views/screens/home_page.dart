import 'package:recipes_app/header_page.dart';

class Timer extends MaterialPageRoute {
  Timer(WidgetBuilder builder) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(seconds: 1);
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List myScreen = [
    const RecipesPage(),
    const SearchPage(),
    const FavoritePage(),
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Recipe",
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        backgroundColor: const Color(0xff42515E),
        foregroundColor: Colors.white,
        actions: const [
          Icon(Icons.light_mode),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.favorite),
          SizedBox(
            width: 30,
          ),
        ],
      ),
      body: myScreen[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(
            () {
              index = value;
            },
          );
        },
        currentIndex: index,
        selectedLabelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color(0xff42515E),
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff42515E),
            label: 'search',
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff42515E),
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            ),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff42515E),
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
