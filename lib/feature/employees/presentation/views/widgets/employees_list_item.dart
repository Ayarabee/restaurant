import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/feature/employees/presentation/views/widgets/build_employees_container_child.dart';

class EmployeesListItem extends StatelessWidget {
  const EmployeesListItem({super.key});

  @override
  Widget build(BuildContext context) {
    double itemWidth = 0.0;
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        itemWidth = boxConstraints.maxWidth;
        return Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: ColorsManager.white,
              borderRadius: BorderManager.radius10,
              border: Border.all(
                color: ColorsManager.primary,
              )),
          child: BuildEmployeesContainerChild(itemWidth: itemWidth,),
        );
      },
    );
  }
}
