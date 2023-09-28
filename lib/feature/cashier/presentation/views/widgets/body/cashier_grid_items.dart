import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/feature/cashier/data/models/cashier_item_model.dart';
import 'package:restaurant/feature/cashier/presentation/cubit/cashier_cubit.dart';

class CashierGridItems extends StatelessWidget {
  const CashierGridItems({super.key});

  @override
  Widget build(BuildContext context) {

    List<CashierItemModel> items = List.generate(32, (index) => CashierItemModel(name: 'item ${index+1}', price: index+10));
    return Expanded(
      child: Center(
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: 1 / 1,
          crossAxisCount: 8,
          children: List.generate(
            items.length,
                (index) => InkWell(
                  onTap: ()
                  {
                    CashierCubit.get(context).addItemToOrder(items[index]);
                  },
                  child: CachedNetworkImage(
                      imageBuilder: (context, imageProvider) => Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                ),
                                color: ColorsManager.blackOpacity,
                              ),
                              padding: EdgeInsets.all(2),
                              child: Text(
                                items[index].name,
                                style: StyleManager.textStyle14,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      placeholder: (context, error) => const Icon(
                        Icons.image_outlined,
                        color: Colors.grey,
                      ),
                      fit: BoxFit.cover,
                      //imageUrl: AppCubit.get(context).images[index],
                      imageUrl: "https://media-afr-cdn.oriflame.com/contentImage?externalMediaId=885528a5-42dc-4759-9016-3945a9287e43&name=mango&inputFormat=png",
                      errorWidget: (context, url, error) =>
                      const Icon(Icons.error_outline)),
                ),
          ),
        ),
      ),
    );
  }
}
