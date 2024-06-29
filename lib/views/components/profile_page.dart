import 'package:recipes_app/header_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          // color: Color(0xff283138),
          image: DecorationImage(
            image: NetworkImage(
              "https://as1.ftcdn.net/v2/jpg/01/26/91/78/1000_F_126917812_XlWgkaV9f81Hde4wvmvJWM3huJRvy5EM.jpg",
            ),
          ),
        ),
      ),
    );
  }
}
