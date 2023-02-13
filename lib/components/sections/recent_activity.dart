import 'package:flutter/material.dart';

import '../box_card.dart';
import '../color_dot.dart';
import '../content_division.dart';
import '../../themes/theme_colors.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDot(color: ThemeColors.recentActivity['spent']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Saída'),
                    Text(
                      '\$9900.97',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child:
                          ColorDot(color: ThemeColors.recentActivity['income']),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Entrada'),
                        Text(
                          '\$9900.97',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          child: Text('Limite de gastos: R\$432.90'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: LinearProgressIndicator(
            value: 0.3,
            minHeight: 8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: ContentDivision(),
        ),
        Text(
            'Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!'),
        TextButton(
          onPressed: () {},
          child: Text(
            'Diga-me como!',
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}
