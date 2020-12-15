import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_ecomerce/categories/women_view_model.dart';

class WomenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WomenViewModel(),
      child: Consumer<WomenViewModel>(
        builder: (context, model, child) =>
        Container(
//      color: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              ///
              /// this is offer Container
              ///
              Container(
                width: 343,
                height: 100,
                margin: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Color(0XFFDB3022),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SUMMER SALES",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        height: 1.5,
                      ),
                    ),
                    Text(
                      "Up to 50% off ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),

             Expanded(
               child: ListView(
                 children: model.cart.map<Widget>((e) => cart(title: e.title, image: e.image),).toList(),
               ),
             )
//              cart()
            ],
          ),
        ),
      ),
    );
  }

  Widget cart({String title, String image}) {
    return Container(
          width: 343,
          height: 100,
          margin: EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 23, top: 39, bottom: 39),
                child: Text(
                  "$title",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),

              Container(
                height: 100,
                width: 171,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("$image"),
                  ),
                ),
              ),
            ],
          ),
        );
  }
}
