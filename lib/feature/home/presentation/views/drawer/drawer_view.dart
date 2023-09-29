import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/feature/employees/presentation/views/employees_view.dart';
import 'package:restaurant/feature/fund/presentation/views/add_fund_view.dart';
import 'package:restaurant/feature/fund/presentation/views/deducte_fund_view.dart';
import 'package:restaurant/feature/items/presentation/views/add_item_view.dart';
import 'package:restaurant/feature/items/presentation/views/add_quantity_view.dart';
import 'package:restaurant/feature/items/presentation/views/edit_item_view.dart';
import 'package:restaurant/feature/items/presentation/views/item_details_view.dart';
import 'package:restaurant/feature/items/presentation/views/items_view.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/item_details/item_details_body.dart';
import 'package:restaurant/feature/product/presentation/views/add_product_view.dart';
import 'package:restaurant/feature/product/presentation/views/expenses_view.dart';
import 'package:restaurant/feature/product/presentation/views/purchases_view.dart';
import 'package:restaurant/feature/users/presentation/views/add_user_view.dart';
import 'package:restaurant/feature/users/presentation/views/users_view.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManager.white,
      width: MediaQuery.of(context).size.width*0.3,
      height: double.infinity,
      child: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children:
            [
              // DrawerItemBuilder(
              //   text: 'الموظفين',
              //   widget: EmployeesView(),
              // ),
              DrawerItemBuilder(
                text: 'اضافة للصندوق',
                widget: AddFundsView(),
              ),
              DrawerItemBuilder(
                text: 'خصم من الصندوق',
                widget: DeductedFundsView(),
              ),
              DrawerItemBuilder(
                text: 'اضافة صنف',
                widget: AddItemView(),
              ),
              DrawerItemBuilder(
                text: 'تفاصيل الصنف',
                widget: ItemDetailsView(),
              ),
              DrawerItemBuilder(
                text: 'اضافة كمية للصنف',
                widget: AddQuantityView(),
              ),
              DrawerItemBuilder(
                text: 'اضافة منتج',
                widget: AddProductView(),
              ),
              DrawerItemBuilder(
                text: 'المصروفات اليومية',
                widget: ExpensesView(),
              ),
              DrawerItemBuilder(
                text: 'المشتريات',
                widget: PurchasesView(),
              ),
              DrawerItemBuilder(
                text: 'اضافة مستخدم',
                widget: AddUserView(),
              ),

            ],
          ),
        ),
      ));
  }
}

class DrawerItemBuilder extends StatelessWidget {
  const DrawerItemBuilder({super.key, required this.text, required this.widget});

  final String text;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextButton(
        onPressed: ()
        {  Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context)=> widget
            )
        );
        }, child: Text(text, style: StyleManager.textStyle20.copyWith(color: ColorsManager.primary),)),
    );
  }
}
