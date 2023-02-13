import 'package:flutter/material.dart';

import '../../themes/theme_colors.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ThemeColors.headerGradient,
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.fromLTRB(16, 70, 16, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: '\$',
                  children: [
                    TextSpan(
                      text: '1000.00',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              Text('Balanço da disponível')
            ],
          ),
          Icon(
            Icons.account_circle,
            size: 46,
          )
        ],
      ),
    );
  }
}
