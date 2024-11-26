import 'package:flutter/material.dart';

class Categorymodel {
  final String title;
  final bool active;
  final IconData icon;

  Categorymodel(
      {required this.icon, required this.title, required this.active});
}
