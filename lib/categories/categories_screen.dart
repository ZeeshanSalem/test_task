import 'package:flutter/material.dart';
import 'package:test_ecomerce/categories/women.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(

          appBar: CustomAppBar(
            bottom: TabBar(
                unselectedLabelColor: Colors.black,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.black),
                labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
                indicatorWeight: 3.6,
//                isScrollable: true,
                indicatorColor: Color(0XFFDB3022),
                indicatorSize: TabBarIndicatorSize.tab,
                labelPadding: EdgeInsets.symmetric( horizontal: 5, vertical: 11),
                labelColor: Colors.black,

                tabs: [
                  Text(
                    "Women",

                  ),
                  Text(
                    "Men",
                  ),

                  Text(
                    "Kids",
                  ),
                ]),
          ),

//          backgroundColor: ,
        body: TabBarView(
          children: [
            WomenScreen(),
            WomenScreen(),
            WomenScreen(),
          ],
        ),

        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.grey, spreadRadius: 0, blurRadius: 0),
            ],
          ),
          child: ClipRRect(

            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              items: [

                BottomNavigationBarItem(

                  label: "Home",
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 20,left: 20,),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Icon(Icons.home_outlined, color: Colors.grey,size: 24,),
                        Text("Home",style: TextStyle(color: Colors.grey, fontSize: 10),),
                      ],
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Shop",
                  icon: Padding(
                    padding: const EdgeInsets.only(right:20.0,),
                    child: Column(
                      children: [
                        Icon(Icons.shopping_cart_outlined, color: Color(0XFFDB3022),size: 24,),
                        Text("Shop",style: TextStyle(color: Color(0XFFDB3022), fontSize: 10),),
                      ],
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Bag",
                  icon: Padding(
                    padding: const EdgeInsets.only(right:20.0),
                    child: Column(
                      children: [
                        Icon(Icons.shopping_bag_outlined,color: Colors.grey,size: 24,),
                        Text("Bag",style: TextStyle(color: Colors.grey, fontSize: 10),),
                      ],
                    ),
                  ),
//
                ),
                BottomNavigationBarItem(
                  label: "Favorite",
                  icon: Padding(
                    padding: const EdgeInsets.only(right:10.0),
                    child: Column(
                      children: [
                        Icon(Icons.favorite_border,color: Colors.grey,size: 24,),
                        Text("Favorite",style: TextStyle(color: Colors.grey, fontSize: 10),),
                      ],
                    ),
                  ),
                ),

                BottomNavigationBarItem(
                  label: "Person",
                  icon: Padding(
                    padding: const EdgeInsets.only(right:10.0,),
                    child: Column(
                      children: [
                        Icon(Icons.person_outline,color: Colors.grey,size: 24,),
                        Text("Person",style: TextStyle(color: Colors.grey, fontSize: 10),),
                      ],
                    ),
                  ),
                ),


              ],
              
            ),
          ),
        ),
        ),
      ),
    );
  }
}

class CustomAppBar extends PreferredSize {
  final Widget bottom;
  CustomAppBar({this.bottom});
  @override
  Size get preferredSize => Size.fromHeight(100.0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          padding: EdgeInsets.only(left: 15, right: 15,top: 20, bottom: 11),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios, size: 16,color: Colors.black,),

              Spacer(),
              Text("Categories", style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),),
              Spacer(),

              Icon(Icons.search, size: 18, color: Colors.black,),
            ],
          ),
        ),

        bottom ?? Container(),
      ],
    );
  }
}

