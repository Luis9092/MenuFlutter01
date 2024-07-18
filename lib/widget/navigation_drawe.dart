import 'package:flutter/material.dart';
import 'package:menuleft/page/favourite_page.dart';
import 'package:menuleft/page/people_page.dart';
import 'package:menuleft/page/user_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 24);

  const NavigationDrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    const name = 'Arbustito Cipress';
    const email = 'arbusto123_69@gmail.com';
    const urlImage = "assets/images/arb.png";

    return Drawer(
      child: Material(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const UserPage(
                  name: name,
                  urlImage: urlImage,
                ),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  // buildSearchField(),
                  const SizedBox(height: 24),

                  buildMenuItem(
                    text: 'Tomar Foto',
                    icon: Icons.camera,
                    onClicked: () => selectedItem(context, 0),
                    borderColor: Colors.blue,
                    borderWidth: 2.0,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Elegir Archivo',
                    icon: Icons.collections_sharp,
                    onClicked: () => selectedItem(context, 1),
                    borderColor: Colors.blue,
                    borderWidth: 2.0,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Resultados',
                    icon: Icons.table_chart,
                    onClicked: () => selectedItem(context, 2),
                    borderColor: Colors.blue,
                    borderWidth: 2.0,
                  ),

                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Anotaciones',
                    icon: Icons.notes,
                    onClicked: () => selectedItem(context, 3),
                    borderColor: Colors.blue,
                    borderWidth: 2.0,
                  ),
                  const SizedBox(height: 24),
                  const Divider(color: Colors.grey),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Acerca De',
                    icon: Icons.adb_outlined,
                    onClicked: () => selectedItem(context, 4),
                    borderColor: Colors.blue,
                    borderWidth: 2.0,
                  ),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(radius: 62, backgroundImage: AssetImage(urlImage)),
              const SizedBox(width: 20),
              // Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // children: [
              Text(
                name,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                email,
                style: const TextStyle(fontSize: 14, color: Colors.black),
              ),
              // ],
              // ),
              // const Spacer(),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
    required Color borderColor,
    required double borderWidth,
  }) {
    const color = Colors.black;
    const hoverColor = Colors.grey;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
      // decoration: BoxDecoration(

      // ),
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const PeoplePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const FavouritesPage(),
        ));
        break;
    }
  }
}



  // Widget buildSearchField() {
  //   const color = Colors.white;

  //   return TextField(
  //     style: const TextStyle(color: color),
  //     decoration: InputDecoration(
  //       contentPadding:
  //           const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  //       hintText: 'Search',
  //       hintStyle: const TextStyle(color: color),
  //       prefixIcon: const Icon(Icons.search, color: color),
  //       filled: true,
  //       fillColor: Colors.white12,
  //       enabledBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(5),
  //         borderSide: BorderSide(color: color.withOpacity(0.7)),
  //       ),
  //       focusedBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(5),
  //         borderSide: BorderSide(color: color.withOpacity(0.7)),
  //       ),
  //     ),
  //   );
  // }