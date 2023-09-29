import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/core/core_widgets/nav_bar/default_nav_bar.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/feature/home/presentation/cubit/home_cubit.dart';
import 'package:restaurant/feature/home/presentation/views/drawer/drawer_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state){},
        builder: (context, state)
        {
          return Scaffold(
            key: HomeCubit.get(context).scaffoldKey,
            drawer: const DrawerView(),
            body:  HomeCubit.get(context).navBarViews
            [HomeCubit.get(context).currentNavBarView],
          );
        },
      );
  }
}
