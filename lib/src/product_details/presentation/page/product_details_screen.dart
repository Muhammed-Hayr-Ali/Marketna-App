import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/constants/app_colors.dart';
import 'package:marketna_app/shared/converter/string_converter.dart';
import 'package:marketna_app/src/product_details/presentation/manager/controler.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key});
  final id = Get.arguments as int;
  final _ = Get.find<ProductDetailsControler>();
  // void _getImages({required String url}) async {
  //   Get.toNamed(AppRoutes.imageViewer, arguments: url);
  // }

  @override
  Widget build(BuildContext context) {
    _.getProductDetails(id: id);
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: false,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                imageUrl:
                    StringConvrter.url(url: _.product.value.thumbnailImage),
                fit: BoxFit.cover,
              ),
            ),
            expandedHeight: 260,
            backgroundColor: AppColors.white,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'Menu',
              onPressed: () {},
            ), //IconButton
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.comment),
                tooltip: 'Comment Icon',
                onPressed: () {},
              ), //IconButton
              IconButton(
                icon: const Icon(Icons.settings),
                tooltip: 'Setting Icon',
                onPressed: () {},
              ), //IconButton
            ], //<Widget>[]
          ), //SliverAppBar
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                title: Center(
                  child: Text('$index',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 50,
                          color: Colors.greenAccent[400]) //TextStyle
                      ),
                ),
              ),
              childCount: 51,
            ),
          )
        ],
      ),
    );
  }
}
