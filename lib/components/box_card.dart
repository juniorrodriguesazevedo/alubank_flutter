// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BoxCard extends StatefulWidget {
  const BoxCard({
    Key? key,
    required this.boxContent,
  }) : super(key: key);

  final Widget boxContent;

  @override
  State<BoxCard> createState() => _BoxCardState();
}

class _BoxCardState extends State<BoxCard> {
  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor
      ),
      child: widget.boxContent,
    );
  }
}
