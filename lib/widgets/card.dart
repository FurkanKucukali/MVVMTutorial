import 'package:flutter/material.dart';
import 'package:printflow_mulakat/core/base/size.dart';

class CustomCard extends StatelessWidget {
  final Column? column;
  const CustomCard({Key? key, this.column,}) : super(key: key);

  @override
  Card build(BuildContext context,) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)),
      child: SizedBox(
        height: Sizedx().height(0.25, context),
        width: Sizedx().width(1, context),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: column,
        ),
      ),
    );
  }
}
