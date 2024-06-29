import 'package:recipes_app/header_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://i.pinimg.com/564x/4a/3b/00/4a3b00d127f87d2e6ee4cc7aeaaffb3e.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        gapPadding: 3,
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 70,
                          strokeAlign: 20,
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      hintMaxLines: 2,
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                // const Icon(Icons.language),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
