import 'package:recipes_app/header_page.dart';
import 'package:recipes_app/views/screens/home_page.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({super.key});

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  final List<String> image = [
    "lib/assets/image/r1.webp",
    "lib/assets/image/r2.jpg",
    "lib/assets/image/r3.webp",
    "lib/assets/image/r4.webp",
    "lib/assets/image/r5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Stack(
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //search
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 150,
                  width: 800,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'lib/assets/image/bg.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Text
                const Text(
                  "Trading Foods ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                //items[foy you]
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      5,
                      (index) => Container(
                        height: s.height * 0.2,
                        width: s.width * 0.3,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              data[index + 5]['image'],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: s.height * 0.05,
                              width: s.width * 0.3,
                              decoration: const BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                              child: Text(
                                data[index + 5]['name'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.merienda(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                const Text(
                  "All Foods Here...",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(
                  height: 10,
                ), // Text
                // Product
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // [box]
                      ...data
                          .map(
                            (e) => GestureDetector(
                              onTap: () {
                                product = e;
                                Navigator.of(context).push(
                                  Timer(
                                    (context) => DetailPage(data: e),
                                  ),
                                );
                              },
                              child: Container(
                                height: s.height * 0.15,
                                width: s.width * 0.9,
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  // color: Colors.white10,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Hero(
                                        tag: e['name'],
                                        child: Container(
                                          height: s.height * 0.45,
                                          width: s.width * 0.3,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['image'],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          e['name'],
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.merienda(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
