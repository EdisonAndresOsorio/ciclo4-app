import 'package:flutter/material.dart';
import 'widgets/offer_card.dart';

class UsersOffersScreen extends StatefulWidget {
  // UsersOffersScreen empty constructor
  const UsersOffersScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<UsersOffersScreen> {
  final items = List<String>.generate(10, (i) => "Contenido $i de Usuario");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return PostCard(
          title: items[index],
          content:
              'Aqui esta el contenido de los diferentes usuarios que quieren compartir con la comunidad. Son contenidos dedicados. Lo importante del contenido es que sea importante y que se pueda listar correctamente.',
          picUrl:
              'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200',
          onChat: () => {},
        );
      },
    );
  }
}
