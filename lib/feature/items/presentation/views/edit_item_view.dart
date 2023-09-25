import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/feature/items/data/item_model.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/add_item/main_colum_item_body.dart';
import '../../../../core/core_widgets/default_buttons/default_button_manager.dart';
import '../../../../core/core_widgets/image_widget/image_view.dart';

class EditItemView extends StatelessWidget {
  const EditItemView({super.key, required this.itemModel});
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultBody(
        title: "تعديل",
         sideBarTitleToDivider:30,
        sideBarBody: ImageView(
            image: AssetsManager.deleteMe,
          onPressed: () {  },
         ),
        sideBarEmptyButton: DefaultButtonManager(
            text: 'الغاء', 
            onTab: (){}),
        sideBarFilledButton: DefaultButtonManager(
            text: 'حفظ',
            onTab: (){}
        ),
        body: MainColumItemBody(
          isEdit: true,
          itemModel: itemModel,
        ),
      ),
    );
  }
}
