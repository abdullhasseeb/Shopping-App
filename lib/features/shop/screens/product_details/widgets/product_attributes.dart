
import 'package:e_commerce/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class UProductAttributes extends StatelessWidget {
  const UProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Selected Attributes Pricing & Description
        URoundedContainer(
            padding: EdgeInsets.all(USizes.md),
            backgroundColor: dark ? UColors.darkerGrey : UColors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title, Price & Stock
                Row(
                  children: [
                    /// [Text] - Variation Heading
                    USectionHeading(
                      title: 'Variation',
                      showActionButton: false,
                    ),
                    SizedBox(width: USizes.spaceBtwItems),

                    Column(
                      children: [
                        /// Price, Sale Price, Actual Price
                        Row(
                          children: [
                            /// [Text] - Price
                            UProductTitleText(title: 'Price : ', smallSize: true),

                            /// Actual Price
                            Text(
                              '250',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(decoration: TextDecoration.lineThrough),
                            ),
                            SizedBox(width: USizes.spaceBtwItems),

                            /// Sale price
                            UProductPriceText(price: '200')
                          ],
                        ),

                        /// Stock Status
                        Row(
                          children: [
                            UProductTitleText(title: 'Stock : ', smallSize: true),
                            Text('In Stock', style: Theme.of(context).textTheme.titleMedium)
                          ],
                        )
                      ],
                    )
                  ],
                ),

                /// Attribute Description
                UProductTitleText(title: 'This is a product of iPhone 11 with 512 GB', smallSize: true, maxLines: 4)
              ],
            )),
        SizedBox(height: USizes.spaceBtwItems),

        /// Attributes - Colors
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: 'Colors', showActionButton: false),
            SizedBox(height: USizes.spaceBtwItems / 2),
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(text: 'Red', selected: true, onSelected: (value) {}),
                UChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
                UChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),

        /// Attributes - Sizes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: 'Sizes', showActionButton: false),
            SizedBox(height: USizes.spaceBtwItems / 2),
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(text: 'Small', selected: true, onSelected: (value) {}),
                UChoiceChip(text: 'Medium', selected: false, onSelected: (value) {}),
                UChoiceChip(text: 'Large', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}

