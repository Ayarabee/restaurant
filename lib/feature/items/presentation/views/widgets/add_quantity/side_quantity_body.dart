import 'package:flutter/widgets.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';

import '../../../../../../core/core_widgets/default_form/default_from2.dart';
import '../../../../../../core/resources_manager/size_manager.dart';

class SideQuantityBody extends StatelessWidget {
  const SideQuantityBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController item =TextEditingController(text: 'مكرونة');
    TextEditingController unit=TextEditingController(text: 'الطرد') ;
    return Column(
      children: [
      Container(
      height: 120,
      width: 120,
      margin: const EdgeInsetsDirectional.only(
          start: 8, top:10),
      decoration: BoxDecoration(
        borderRadius: BorderManager.radius15,
        image: const DecorationImage(
           image: AssetImage(
            AssetsManager.deleteMe,
          ),
          fit: BoxFit.fill,
        ),
      ),
     ),
        const SizedBox(height: 10,),
        DefaultForm2(
          controller: item,
          text: 'اسم الصنف',
        ),
        const SizedBox(height: 10,),
        DefaultForm2(
          controller: unit,
          text: 'الوحدة',
        ),
      ],
    );
  }
}
