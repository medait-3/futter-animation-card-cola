 AnimatedPadding(
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
                              child: Container( 
                                decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                      colors: [Colors.white, parseColor(product.color)], // Adjust colors as needed
                                      begin: Alignment.topLeft, // Adjust gradient start position
                                      end: Alignment.bottomCenter, // Adjust gradient end position
                                    ),
                                      borderRadius: BorderRadius.circular(50.0), // Adjust border radius as needed
                                    ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 11, top: 81),
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
                  top: -30,
                  left: 35,
                  child: BounceInUp(from: 10,
                    key: ValueKey<int>(_index),
                    duration: Duration(milliseconds: 400),
                    child: Image.asset(
                  product.stackimg,
                  height: 250,
                  width: 215,
                    ),
                  ),
                    ),
                      ],
                    ),
                  ),
                );