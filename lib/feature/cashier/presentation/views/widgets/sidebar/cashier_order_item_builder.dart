import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/feature/cashier/data/models/cashier_item_model.dart';
import 'package:restaurant/feature/cashier/presentation/cubit/cashier_cubit.dart';

class OrderItemBuilder extends StatelessWidget {
  const OrderItemBuilder({super.key, required this.itemModel, required this.index});

  final CashierItemModel itemModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children:
      [
        Container(
          margin: const EdgeInsetsDirectional.only(
              start: 5,
              top: 5
          ),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderManager.radius15,
            color: ColorsManager.white,
          ),
          child: Row(
            children:
            [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderManager.radius15,
                    image: DecorationImage(image: AssetImage(AssetsManager.test),fit: BoxFit.cover)
                ),
                height: 90,
                width: 80,
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Expanded(child: Text(itemModel.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: StyleManager.textStyle14.copyWith(
                              color: ColorsManager.black,
                                fontWeight: FontWeight.normal),)),
                          Text(itemModel.price.toString(), style: StyleManager.textStyle14.copyWith(
                              color: ColorsManager.black,
                              fontWeight: FontWeight.normal),),
                        ],
                      ),
                      const SizedBox(height: 5,),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                              color: ColorsManager.secondary,
                              borderRadius: BorderManager.radius5,
                              border: Border.all(
                                  color: ColorsManager.greyMiddle
                              )
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children:
                            [

                              InkWell(
                                onTap: ()
                                {
                                  CashierCubit.get(context).changeItemCount(isAdd: true, index: index);
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                    child: Icon(Icons.keyboard_arrow_up))),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Text(itemModel.quantity.toString(),style: StyleManager.textStyle16.copyWith(height: 1.6,color: ColorsManager.black),),
                              ),
                              InkWell(
                                  onTap: ()
                                  {
                                    if(itemModel.quantity >1) {
                                      CashierCubit.get(context).changeItemCount(isAdd: false, index: index);
                                    }
                                  },
                                  child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      child: Icon(Icons.keyboard_arrow_down))),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        height: 30,
                        child: Row(
                          children:
                          [
                            Expanded(
                                child: ListView.separated(
                                  reverse: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index)=>Container(
                                    width: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: ColorsManager.primary),
                                      borderRadius: BorderManager.radius5,
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 2, vertical: 1),
                                    child: Center(child: SvgPicture.asset(AssetsManager.cheese)),
                                  ),
                                  separatorBuilder: (context, index)=> const SizedBox(width: 6,),
                                  itemCount: 4,
                                )
                            ),
                            SizedBox(width: 5,),
                            InkWell(
                              onTap: (){},
                              child: SvgPicture.asset(AssetsManager.plusCircle))

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),

        InkWell(
          onTap: ()
          {
            CashierCubit.get(context).removeItemFromOrder(index);
          },
          child: SvgPicture.asset(AssetsManager.cancelCircle),
        )
      ],
    );
  }
}
