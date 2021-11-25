import 'package:flutter/material.dart';
import 'widgets/offer_card.dart';

class PublicOffersScreen extends StatefulWidget {
  // PublicOffersScreen empty constructor
  const PublicOffersScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PublicOffersScreen> {
  final items = List<String>.generate(10, (i) => "Evento $i");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return OfferCard(
          title: items[index],
          content:
              'El evento se realizara en la ciudad principal del pais, y se presentaran los personajes mas importantes de la peliculas de EEUU. Entenderan la prioridad del caso con el tema de la seguridad y queremos que todo salga muy bien. Estar 30 minutos antes para el ingreso y presentar correctamente el ticket',
          arch: 'Evento $index',
          level: 'Ciudad',
          payment: 150000,
          onCopy: () => {},
          onApply: () => {},
        );
      },
    );
  }
}
