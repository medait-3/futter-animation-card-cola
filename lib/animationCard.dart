
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class MyScrollingWidget extends StatefulWidget {
  @override
  _MyScrollingWidgetState createState() => _MyScrollingWidgetState();
}

class _MyScrollingWidgetState extends State<MyScrollingWidget> {
  late PageController _controller;
  int _index = 0;
  int selectedIndex = 0;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.8);
    _controller.addListener(_handlePageChange);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handlePageChange() {
    setState(() {
      currentIndex = _controller.page!.round();
      selectedIndex = currentIndex; // Update selectedIndex when page changes
    });
  }


  Color parseColor(String color) {
    return Color(int.parse(color.replaceAll('#', '0xFF')));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        myCategory(),   

        Expanded(
      
          child: Container(
            child: PageView.builder(
              itemCount: productList.length,
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _index = index;
                });
              },
              itemBuilder: (context, index) {
                final product = productList[index];
                return AnimatedPadding(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.fastOutSlowIn,
                  padding: EdgeInsets.all(_index == index ? 0.0 : 18),
                  child: Container(
                    child: Stack(
                      children: [
                        Padding(
                       padding: const EdgeInsets.only(top:55),
                          child: Container(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Container( height: 320,
                                decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                      colors: [Colors.white, parseColor(product.color)], // Adjust colors as needed
                                      begin: Alignment.topLeft, // Adjust gradient start position
                                      end: Alignment.bottomCenter, // Adjust gradient end position
                                    ),
                                      borderRadius: BorderRadius.circular(50.0), // Adjust border radius as needed
                                    ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 11,bottom: 30),
                                  child: Image.asset(
                                    product.img,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),if (_index == index)
                    Positioned(
                bottom: 155,
                  left: 30,
                  child: BounceInUp(from: 0,
                    key: ValueKey<int>(_index),
                    duration: Duration(milliseconds: 400),
                    child: Image.asset(
                  product.stackimg,
                  height: 200,
                  width: 250,
                    ),
                  ),
                    ),
                    if (_index == index)
                    Positioned(
                bottom: 200,
                  left: 60,
                  child: BounceInUp(from: 101,
                    key: ValueKey<int>(_index),
                    duration: Duration(milliseconds: 500),
                    child: Image.asset(
                  product.stackimg2,
                  height: 250,
                  width: 150,
                    ),
                  ),
                    ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  myCategory() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            productList.length,
            (index) {
              final product = productList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      _controller.animateToPage(
                        index,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 2,
                          color: selectedIndex == index ?  parseColor(product.color) : Colors.transparent,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        product.catg,style: TextStyle(fontSize: 18,
                          color: selectedIndex == index ?  parseColor(product.color) : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
