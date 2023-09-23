import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/defualt_drop_down/search_drop_down_form_field.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import '../../../../../core/resources_manager/style_manager.dart';

class ItemCodeDropDown extends StatefulWidget {
  const ItemCodeDropDown({
    Key? key,
    required this.text,
    required this.textEditingController,
    required this.items,
    required this.onChanged,
  }) : super(key: key);
  final String text;
  final List<String> items;
  final Function(String?) onChanged;
  final TextEditingController textEditingController;

  @override
  State<ItemCodeDropDown> createState() => _RequestPricingDropDown();
}

class _RequestPricingDropDown extends State<ItemCodeDropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: Text(
          widget.text,
          style: StyleManager.textStyleDark24,
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(Icons.keyboard_arrow_down,color: ColorsManager.black,),
          iconDisabledColor: ColorsManager.black,
          iconEnabledColor: ColorsManager.black,
        ),
        isDense: true,
        alignment: AlignmentDirectional.centerStart,
        items: widget.items
            .map((String item) => DropdownMenuItem<String>(
          value: item,
          child: Text(
            item,
            style: StyleManager.textStyleDark24,
          ),
        ))
            .toList(),
        onChanged: widget.onChanged,
        buttonStyleData: ButtonStyleData(
          height:  45,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderManager.radius15,
            border: Border.all(
                color: ColorsManager.primary),
          ),
        ),

        dropdownStyleData: const DropdownStyleData(
          maxHeight: 300,
        ),
        dropdownSearchData: DropdownSearchData(
          searchController: widget.textEditingController,
          searchInnerWidgetHeight: 10,
          searchInnerWidget: Container(
            height: 50,
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 4,
              right: 8,
              left: 8,
            ),
            child: SearchDropDownFormField(
              controller: widget.textEditingController,
              text: widget.text,
            ),
          ),
          searchMatchFn: (item, searchValue) {
            return item.value.toString().contains(searchValue);
          },
        ),
        //This to clear the search value when you close the menu
        onMenuStateChange: (isOpen) {
          if (!isOpen) {
            widget.textEditingController.clear();
          }
        },
      ),
    );
  }
}
