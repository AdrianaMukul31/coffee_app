import 'package:coffee_app/res/resorces_list.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  final int index;

  const ProductScreen({super.key, required this.index});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var s = true;
  var m = false;
  var l = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFF1d2630),
        child: Column(
          children: [
              Expanded(
                flex: 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image(
                            image: images[widget.index],
                            fit: BoxFit.cover,
                            ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1d2630),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.arrow_back_ios_outlined,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1d2630),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.only(top: 30, right: 30, left: 30),
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFF1d2630).withOpacity(0.6),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          names[widget.index],
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                           Text(
                                          with_[widget.index],
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white.withOpacity(0.5),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Row(
                                          children: [
                                            Icon(Icons.star,
                                             color: Colors.orange,
                                             ),
                                             SizedBox(width: 10),
                                             Text(s?ratting[widget.index].toString() : m ?
                                             mediumRating[widget.index].toString() : largeRating
                                             [widget.index].toString() , ), 
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 30),
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}