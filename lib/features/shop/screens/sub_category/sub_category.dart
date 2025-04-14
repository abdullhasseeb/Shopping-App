import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/products/product_cards/product_card_horizontal.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: UAppBar(showBackArrow: true, title: Text('Sports', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
            padding: UPadding.screenPadding,
          child: Column(
            children: [

              /// Sub Category
              USectionHeading(title: 'Sports Shoes', onPressed: (){}),
              SizedBox(height: USizes.spaceBtwItems / 2),

              /// Horizontal Product Card
              SizedBox(height: 120,child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: USizes.spaceBtwItems / 2),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return UProductCardHorizontal();
              },)),

              /// Sub Category
              USectionHeading(title: 'Sports Clothes', onPressed: (){}),
              SizedBox(height: USizes.spaceBtwItems / 2),

              /// Horizontal Product Card
              SizedBox(height: 120,child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: USizes.spaceBtwItems / 2),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return UProductCardHorizontal();
                },)),

              /// Sub Category
              USectionHeading(title: 'Sports Clothes', onPressed: (){}),
              SizedBox(height: USizes.spaceBtwItems / 2),

              /// Horizontal Product Card
              SizedBox(height: 120,child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: USizes.spaceBtwItems / 2),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return UProductCardHorizontal();
                },)),
              /// Sub Category
              USectionHeading(title: 'Sports Clothes', onPressed: (){}),
              SizedBox(height: USizes.spaceBtwItems / 2),

              /// Horizontal Product Card
              SizedBox(height: 120,child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: USizes.spaceBtwItems / 2),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return UProductCardHorizontal();
                },)),
              /// Sub Category
              USectionHeading(title: 'Sports Clothes', onPressed: (){}),
              SizedBox(height: USizes.spaceBtwItems / 2),

              /// Horizontal Product Card
              SizedBox(height: 120,child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: USizes.spaceBtwItems / 2),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return UProductCardHorizontal();
                },))
            ],
          ),
        ),
      ),
    );
  }
}




