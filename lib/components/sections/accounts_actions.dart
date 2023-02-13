// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../box_card.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Ações da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: BoxCard(
                  boxContent: _AccountActionsContent(
                    Icon(Icons.account_balance_wallet),
                    'Depositar',
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: BoxCard(
                  boxContent: _AccountActionsContent(
                    Icon(Icons.cached),
                    'Transferir',
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: BoxCard(
                  boxContent: _AccountActionsContent(
                    Icon(Icons.center_focus_strong),
                    'Ler',
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  const _AccountActionsContent(
    this.icon,
    this.text,
  );

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}
