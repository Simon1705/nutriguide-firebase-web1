import 'package:flutter/material.dart';
import '../config/maintenance_config.dart';
import 'maintenance_page.dart';

class MaintenanceWrapper extends StatelessWidget {
  final Widget child;

  const MaintenanceWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MaintenanceConfig.isMaintenanceMode) {
      return const MaintenancePage();
    }
    return child;
  }
} 