import 'package:recipes_app/header_page.dart';
import 'package:slide_to_act/slide_to_act.dart';

class DetailPage extends StatefulWidget {
  Map data;
  DetailPage({super.key, required this.data});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
                  SizedBox(
                    height: s.height * 0.1,
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.8),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: s.width * 0.75,
                      ),
                      const Align(
                        alignment: Alignment(0.9, -0.8),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: s.height * 0.05,
                  ),
                  Align(
                    alignment: const Alignment(0, -1.9),
                    child: Text(
                      "${widget.data['name']}",
                      style: const TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.04,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Rating ",
                            style: GoogleFonts.merienda(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "${widget.data['rating']} ⭐",
                            style: GoogleFonts.merienda(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: s.height * 0.02,
                          ),
                          Text(
                            "cookTime",
                            style: GoogleFonts.merienda(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "${widget.data['cookTimeMinutes']} Minutes",
                            style: GoogleFonts.merienda(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: s.width * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Hero(
                          tag: widget.data['name'],
                          child: Align(
                            alignment: const Alignment(2.5, -0.2),
                            child: CircleAvatar(
                              radius: 110,
                              backgroundImage: NetworkImage(
                                widget.data['image'],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: s.height * 0.05,
                  ),
                  Text(
                    "instructions:-",
                    style: GoogleFonts.merienda(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  ...List.generate(
                    widget.data['instructions'].length,
                    (index) => Text(
                      "- ${widget.data['instructions'][index]}",
                      style: GoogleFonts.merienda(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Cuisine :- ${widget.data['cuisine']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Difficulty :- ${widget.data['difficulty']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "PrepTimeMinutes :- ${widget.data['prepTimeMinutes']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Servings :- ${widget.data['servings']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "CaloriesPerServing :- ${widget.data['caloriesPerServing']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SlideAction(
            alignment: const Alignment(0, 0.95),
            innerColor: Colors.black,
            outerColor: const Color.fromRGBO(236, 236, 236, 1),
            textColor: Colors.black,
            text: 'Add to Cart',
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins',
              fontSize: 20,
            ),
            borderRadius: 55,
            onSubmit: () {
              Navigator.pushNamed(context, Routes.addedToCartPage);
            },
          ),
        ],
      ),
    );
  }
}
/*

  SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: s.height * 0.95,
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 260,
                      ),
                      const Align(
                        alignment: Alignment(0.9, -0.8),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: const Alignment(0, -1.9),
                    child: Text(
                      "${widget.data['name']}",
                      style: const TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Rating ",
                            style: GoogleFonts.merienda(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "${widget.data['rating']} ⭐",
                            style: GoogleFonts.merienda(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "cookTime",
                            style: GoogleFonts.merienda(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "${widget.data['cookTimeMinutes']} Minutes",
                            style: GoogleFonts.merienda(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Hero(
                          tag: widget.data['name'],
                          child: Align(
                            alignment: const Alignment(2.5, -0.2),
                            child: CircleAvatar(
                              radius: 90,
                              backgroundImage: NetworkImage(
                                widget.data['image'],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "instructions:-",
                    style: GoogleFonts.merienda(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  ...List.generate(
                    widget.data['instructions'].length,
                    (index) => Text(
                      "- ${widget.data['instructions'][index]}",
                      style: GoogleFonts.merienda(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Cuisine :- ${widget.data['cuisine']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Difficulty :- ${widget.data['difficulty']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "PrepTimeMinutes :- ${widget.data['prepTimeMinutes']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Servings :- ${widget.data['servings']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "CaloriesPerServing :- ${widget.data['caloriesPerServing']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
            SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: s.height * 0.95,
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 260,
                      ),
                      const Align(
                        alignment: Alignment(0.9, -0.8),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: const Alignment(0, -1.9),
                    child: Text(
                      "${widget.data['name']}",
                      style: const TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Rating ",
                            style: GoogleFonts.merienda(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "${widget.data['rating']} ⭐",
                            style: GoogleFonts.merienda(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "cookTime",
                            style: GoogleFonts.merienda(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "${widget.data['cookTimeMinutes']} Minutes",
                            style: GoogleFonts.merienda(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Hero(
                          tag: widget.data['name'],
                          child: Align(
                            alignment: const Alignment(2.5, -0.2),
                            child: CircleAvatar(
                              radius: 90,
                              backgroundImage: NetworkImage(
                                widget.data['image'],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "instructions:-",
                    style: GoogleFonts.merienda(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  ...List.generate(
                    widget.data['instructions'].length,
                    (index) => Text(
                      "- ${widget.data['instructions'][index]}",
                      style: GoogleFonts.merienda(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Cuisine :- ${widget.data['cuisine']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Difficulty :- ${widget.data['difficulty']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "PrepTimeMinutes :- ${widget.data['prepTimeMinutes']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Servings :- ${widget.data['servings']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "CaloriesPerServing :- ${widget.data['caloriesPerServing']}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
*/
