import 'package:flutter/material.dart';

import '../box_card.dart';
import '../color_dot.dart';
import '../content_division.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          BoxCard(boxContent: _AccountPointsContent())
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Pontos totais'),
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 6),
          child: Text('3000', style: Theme.of(context).textTheme.bodyLarge),
        ),
        ContentDivision(),
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 6),
          child: Text(
            'Objetivos:',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 6),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: ColorDot(color: Colors.red),
              ),
              Text('Entrega grátis: 15000pts')
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: ColorDot(color: Colors.blue),
            ),
            Text('1 mês de streaming: 3000pts')
          ],
        )
      ],
    );
  }
}
