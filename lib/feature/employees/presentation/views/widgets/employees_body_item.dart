import 'package:flutter/material.dart';

import 'employees_list_item.dart';

class EmployeesBodyItems extends StatelessWidget {
  const EmployeesBodyItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      itemBuilder: (context,index)=>const Row(
        children: [
          Expanded(child: EmployeesListItem()),
          SizedBox(width: 15,),
          Expanded(child: EmployeesListItem()),
        ],
      ),
      separatorBuilder: (context,index)=>const SizedBox(height: 15,),
      itemCount: 2,
    );
  }
}
