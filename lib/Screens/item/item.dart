import 'package:animated_cart/Models/Items.dart';
import 'package:animated_cart/Screens/item/components/cart_button.dart';
import 'package:animated_cart/Screens/item/components/custom_drop_down.dart';
import 'package:animated_cart/components/app_bar.dart';
import 'package:animated_cart/constants.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'ITEM DETAILS',
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: kIconColor),
          onPressed: () {}
        )
      ),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Name
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        demoProducts[0].name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                    SizedBox(height: kDefaultPadding),

                    // Product Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(kDefaultPadding),
                      child: Image.asset(demoProducts[0].image, width: size.width - (kDefaultPadding * 2))
                    ),

                    SizedBox(height: kDefaultPadding),

                    // Price
                    Text(
                      "\$" + demoProducts[0].price.toString(),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: kTextColor
                      ),
                    ),

                    SizedBox(height: kDefaultPadding),

                    // Dropdown List
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: CustomDropDown(
                            items: demoProducts[0].colors,
                            hint: 'Color',
                          ),
                        ),

                        SizedBox(width: kDefaultPadding),

                        Expanded(
                          flex: 2,
                          child: CustomDropDown(
                            items: demoProducts[0].sizes.map((e) => e.toString()).toList(),
                            hint: 'Size',
                          )
                        ),
                      ],
                    ),

                    SizedBox(height: kDefaultPadding),

                    // Cart Button
                    CartButton(
                      tapEvent: () { }
                    ),

                    SizedBox(height: kDefaultPadding),

                    // Description
                    Text(
                      demoProducts[0].description,
                      style: TextStyle(
                        color: kTextLightColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}