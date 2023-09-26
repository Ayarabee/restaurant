
import 'package:flutter/material.dart';

import 'widgets/employees_view_body.dart';

class EmployeesView extends StatelessWidget {
  const EmployeesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EmployeesViewBody(),
    );
  }
}
