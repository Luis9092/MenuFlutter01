import 'package:flutter/material.dart';
import 'package:menuleft/widget/button_widget.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String urlImage;

  const UserPage({
    super.key,
    required this.name,
    required this.urlImage,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("Foto De Perfil"),
          centerTitle: true,
        ),
        body: CustomWidget(message: urlImage, name: name),
      );
}
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.pink,
//           title: Text(name),
//           centerTitle: true,
//         ),
//         body:
// Image.network(
//           urlImage,
//           width: double.infinity,
//           height: double.infinity,
//           fit: BoxFit.contain,
//         ),
//       );
// }

class CustomWidget extends StatelessWidget {
  final String message;
  final String name;
  // const CustomWidget({super.key}, name);
  const CustomWidget({super.key, required this.message, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      width: double.maxFinite,
      height: double.infinity,
      child: Builder(
        builder: (context) => Flex(
            crossAxisAlignment: CrossAxisAlignment.center,
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Hola Bienvenido(a), Que Tenga Buen Dia",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text("$name!!", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blueGrey,
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(24.0),
                    child: Image(
                      image: AssetImage(message),
                      fit: BoxFit.contain,
                    )),
              ),
              const SizedBox(
                height: 70,
              ),
              Expanded(
                  flex: -1,
                  child: ButtonWidget(
                    icon: Icons.image_sharp,
                    text: 'Actualizar Imagen',
                    onClicked: () {},
                  )),
            ]),
      ),
    );
  }
}


  //  const Icon(Icons.abc),
  //           ButtonWidget(
  //             icon: Icons.abc_outlined,
  //             text: "Actualizar",
  //             onClicked: () {},
