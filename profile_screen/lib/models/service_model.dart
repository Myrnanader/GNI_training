import 'package:flutter/material.dart';

class ServiceModel {
  final String title;
  final IconData icon;

  const ServiceModel({required this.title, required this.icon});
}

const List<ServiceModel> services = [
  ServiceModel(title: 'Widgets', icon: Icons.widgets_outlined),
  ServiceModel(title: 'State Management', icon: Icons.account_tree_outlined),
  ServiceModel(title: 'Animations', icon: Icons.animation),
  ServiceModel(title: 'REST APIs', icon: Icons.api),
  ServiceModel(title: 'Firebase', icon: Icons.local_fire_department_outlined),
  ServiceModel(title: 'Clean Architecture', icon: Icons.layers_outlined),
];