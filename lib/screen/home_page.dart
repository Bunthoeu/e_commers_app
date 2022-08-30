import 'package:e_commer_app/model/promot_model.dart';
import 'package:e_commer_app/widget/homePage/banner_home.dart';
import 'package:e_commer_app/widget/homePage/coming_promotion.dart';
import 'package:e_commer_app/widget/homePage/custom_search.dart';
import 'package:e_commer_app/widget/homePage/expire_promotion.dart';
import 'package:e_commer_app/widget/homePage/profile.dart';
import 'package:e_commer_app/widget/homePage/promotion.dart';
import 'package:e_commer_app/widget/homePage/trending_promot.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final promoItem = PromotModel.generatlist();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Stack(children: [
                  Container(
                      width: double.infinity,
                      height: size.height * 0.2,
                      color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ProfilePage(), CustomSearch()],
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 135),
                    width: double.infinity,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[200],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: BannerHome(),
                  ),
                ]),
                Pormotion(),
                SizedBox(
                  height: 10,
                ),
                TrendingPromot(),
                SizedBox(
                  height: 10,
                ),
                CommintPromotion(),
                SizedBox(
                  height: 10,
                ),
                ExpirePromotion(),
              ],
            )));
  }

  // Widget getBody() {
  //   var size = MediaQuery.of(context).size;
  //   return SingleChildScrollView(
  //     child: Stack(children: [
  //       Container(
  //         width: double.infinity,
  //         height: size.height * 0.7,
  //         color: Colors.blue,
  //         child: Padding(
  //           padding: const EdgeInsets.only(top: 45, left: 12, right: 12),
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [_buildPorfile(), _buildSearch()],
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //       Container(
  //         margin: EdgeInsets.symmetric(vertical: 170),
  //         width: double.infinity,
  //         // margin: EdgeInsets.only(top: size.height * 0.3),

  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(30), color: Colors.grey[200]),
  //         child: Column(
  //           children: [
  //             _buildPromotion(),
  //             _buildTrendingPromotion(),
  //             _buildCommingPromotion(),
  //             _buildExpirePromotion()
  //           ],
  //         ),
  //       ),
  //       Positioned(top: 110, left: 15, right: 15, child: _bunnerHome()),
  //     ]),
  //   );
  // }

  // Widget _buildPorfile() {
  //   return Row(
  //     children: [
  //       GestureDetector(
  //         onTap: (() {
  //           Navigator.push(context,
  //               MaterialPageRoute(builder: (context) => ProfilePage()));
  //         }),
  //         child: CircleAvatar(
  //           foregroundImage: NetworkImage(
  //               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYiTsb3IFAF44BEfO-IDrTO9Pa1XsiuLMb0g&usqp=CAU'),
  //           radius: 25,
  //         ),
  //       ),
  //       SizedBox(
  //         width: 10,
  //       ),
  //       Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Text(
  //             'Welcome',
  //             style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 17,
  //             ),
  //           ),
  //           Text(
  //             'Keat Bunthoeun',
  //             style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 17,
  //                 fontWeight: FontWeight.bold),
  //           )
  //         ],
  //       ),
  //     ],
  //   );
  // }

  // Widget _buildSearch() {
  //   return Column(
  //     children: [
  //       Text(' '),
  //       Row(
  //         children: [
  //           Text(
  //             'Search',
  //             style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 17,
  //             ),
  //           ),
  //           IconButton(
  //               onPressed: () {},
  //               icon: Icon(
  //                 Icons.search,
  //                 color: Colors.white,
  //               ))
  //         ],
  //       )
  //     ],
  //   );
  // }

  // Widget _bunnerHome() {
  //   return Container(
  //     height: 140,
  //     width: 200,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(25),
  //       color: Colors.amber,
  //       image: DecorationImage(
  //         image: new AssetImage('assets/images/banner_panda.jpg'),
  //         fit: BoxFit.fill,
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildPromotion() {
  //   return Container(
  //       margin: EdgeInsets.only(top: 90),
  //       width: double.infinity,
  //       height: 270,
  //       color: Colors.white,
  //       child: Column(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Text(
  //                   'Promotion',
  //                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
  //                 ),
  //                 Text(
  //                   'View all',
  //                   style: TextStyle(
  //                       fontWeight: FontWeight.bold, color: Colors.blue),
  //                 )
  //               ],
  //             ),
  //           ),
  //           Container(
  //             width: double.infinity,
  //             height: 240,
  //             child: ListView.separated(
  //                 scrollDirection: Axis.horizontal,
  //                 itemBuilder: ((context, index) => Stack(
  //                       children: [
  //                         Container(
  //                           padding: EdgeInsets.all(8),
  //                           child: Column(
  //                             children: [
  //                               Expanded(
  //                                   flex: 3,
  //                                   child: Container(
  //                                     width: 150,
  //                                     decoration: BoxDecoration(
  //                                         borderRadius:
  //                                             BorderRadius.circular(15),
  //                                         image: DecorationImage(
  //                                             image: AssetImage(
  //                                                 promoItem[index].ima),
  //                                             fit: BoxFit.cover)),
  //                                   )),
  //                               Expanded(
  //                                   child: Row(
  //                                 children: [
  //                                   Icon(
  //                                     Icons.star_border,
  //                                     color: Colors.red,
  //                                   ),
  //                                   Column(
  //                                     mainAxisAlignment:
  //                                         MainAxisAlignment.center,
  //                                     children: [
  //                                       Text(
  //                                         promoItem[index].name,
  //                                         style: TextStyle(
  //                                             fontWeight: FontWeight.bold),
  //                                       ),
  //                                       Text(promoItem[index].title),
  //                                     ],
  //                                   )
  //                                 ],
  //                               ))
  //                             ],
  //                           ),
  //                         ),
  //                         Positioned(
  //                           top: 70,
  //                           right: 10,
  //                           child: Container(
  //                             height: 30,
  //                             width: 70,
  //                             color: Colors.white38,
  //                             child: Row(
  //                               children: [
  //                                 Text(
  //                                   promoItem[index].dicount,
  //                                   style: TextStyle(
  //                                     color: Colors.blue,
  //                                     fontWeight: FontWeight.bold,
  //                                   ),
  //                                 ),
  //                                 SizedBox(
  //                                   width: 10,
  //                                 ),
  //                                 Text(
  //                                   promoItem[index].ofdic,
  //                                   style: TextStyle(
  //                                     color: Colors.red,
  //                                     fontWeight: FontWeight.bold,
  //                                   ),
  //                                 ),
  //                               ],
  //                             ),
  //                           ),
  //                         )
  //                       ],
  //                     )),
  //                 separatorBuilder: (index, _) => SizedBox(
  //                       width: 10,
  //                     ),
  //                 itemCount: promoItem.length),
  //           )
  //         ],
  //       ));
  // }

  // Widget _buildTrendingPromotion() {
  //   var size = MediaQuery.of(context).size;
  //   return Container(
  //       margin: EdgeInsets.only(top: 10),
  //       width: double.infinity,
  //       height: 270,
  //       color: Colors.white,
  //       child: Column(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Text(
  //                   'Trending Promotion',
  //                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
  //                 ),
  //                 Text(
  //                   'Show all',
  //                   style: TextStyle(
  //                       fontWeight: FontWeight.bold, color: Colors.blue),
  //                 )
  //               ],
  //             ),
  //           ),
  //           Container(
  //             width: double.infinity,
  //             height: 240,
  //             child: ListView.separated(
  //                 scrollDirection: Axis.horizontal,
  //                 itemBuilder: ((context, index) => Stack(children: [
  //                       Container(
  //                         padding: EdgeInsets.all(8),
  //                         child: Column(
  //                           children: [
  //                             Expanded(
  //                                 flex: 3,
  //                                 child: Container(
  //                                   width: size.width * 0.8,
  //                                   decoration: BoxDecoration(
  //                                     color: Colors.white,
  //                                     boxShadow: [
  //                                       BoxShadow(
  //                                         color: Colors.grey.withOpacity(0.2),
  //                                         spreadRadius: 3,
  //                                         blurRadius: 3,
  //                                         offset: Offset(0,
  //                                             2), // changes position of shadow
  //                                       ),
  //                                     ],
  //                                     borderRadius: BorderRadius.circular(20),
  //                                   ),
  //                                   child: Padding(
  //                                     padding: const EdgeInsets.all(10.0),
  //                                     child: Row(
  //                                       children: [
  //                                         Expanded(
  //                                             child: Container(
  //                                           child: Column(
  //                                             crossAxisAlignment:
  //                                                 CrossAxisAlignment.start,
  //                                             children: [
  //                                               Row(
  //                                                 children: [
  //                                                   CircleAvatar(
  //                                                     foregroundImage: AssetImage(
  //                                                         'assets/images/iam_game.jpg'),
  //                                                   ),
  //                                                   SizedBox(
  //                                                     width: 10,
  //                                                   ),
  //                                                   Column(
  //                                                     crossAxisAlignment:
  //                                                         CrossAxisAlignment
  //                                                             .start,
  //                                                     children: [
  //                                                       Text(
  //                                                         'EDM III CLUB',
  //                                                         style: TextStyle(
  //                                                             fontWeight:
  //                                                                 FontWeight
  //                                                                     .bold,
  //                                                             fontSize: 16),
  //                                                       ),
  //                                                       Text(
  //                                                         'PHNOMPHEN',
  //                                                         style: TextStyle(
  //                                                           fontWeight:
  //                                                               FontWeight.bold,
  //                                                         ),
  //                                                       )
  //                                                     ],
  //                                                   )
  //                                                 ],
  //                                               ),
  //                                               Divider(
  //                                                 thickness:
  //                                                     1, // thickness of the line
  //                                                 // empty space to the leading edge of divider.
  //                                                 endIndent:
  //                                                     20, // empty space to the trailing edge of the divider.
  //                                                 color: Colors.grey,
  //                                                 // The color to use when painting the line.
  //                                               ),
  //                                               Padding(
  //                                                 padding:
  //                                                     const EdgeInsets.all(16),
  //                                                 child: Column(
  //                                                   crossAxisAlignment:
  //                                                       CrossAxisAlignment
  //                                                           .start,
  //                                                   children: [
  //                                                     Text(
  //                                                       'Buy wishky 2',
  //                                                       style: TextStyle(
  //                                                           fontWeight:
  //                                                               FontWeight.bold,
  //                                                           fontSize: 16),
  //                                                     ),
  //                                                     Text(
  //                                                       'get 1 Free',
  //                                                       style: TextStyle(
  //                                                           fontWeight:
  //                                                               FontWeight.bold,
  //                                                           fontSize: 16),
  //                                                     ),
  //                                                     SizedBox(
  //                                                       height: 30,
  //                                                     ),
  //                                                     Text(
  //                                                       '01 August 2022',
  //                                                       style: TextStyle(
  //                                                           fontWeight:
  //                                                               FontWeight.bold,
  //                                                           color:
  //                                                               Colors.amber),
  //                                                     ),
  //                                                     Text(
  //                                                       'USD xxx',
  //                                                       style: TextStyle(
  //                                                           fontWeight:
  //                                                               FontWeight.bold,
  //                                                           color:
  //                                                               Colors.amber),
  //                                                     ),
  //                                                   ],
  //                                                 ),
  //                                               ),
  //                                             ],
  //                                           ),
  //                                         )),
  //                                         Expanded(
  //                                             child: Container(
  //                                           decoration: BoxDecoration(
  //                                             borderRadius:
  //                                                 BorderRadius.circular(20),
  //                                             image: DecorationImage(
  //                                                 image: AssetImage(
  //                                                     'assets/images/iam_game.jpg'),
  //                                                 fit: BoxFit.cover),
  //                                             //color: Colors.red,
  //                                           ),
  //                                         ))
  //                                       ],
  //                                     ),
  //                                   ),
  //                                 )),
  //                           ],
  //                         ),
  //                       ),
  //                     ])),
  //                 separatorBuilder: (index, _) => SizedBox(
  //                       width: 10,
  //                     ),
  //                 itemCount: promoItem.length),
  //           )
  //         ],
  //       ));
  // }

  // Widget _buildCommingPromotion() {
  //   var size = MediaQuery.of(context).size;
  //   return Container(
  //       margin: EdgeInsets.only(top: 10),
  //       width: double.infinity,
  //       height: 280,
  //       color: Colors.white,
  //       child: Column(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Row(children: [
  //                   Image.asset(
  //                     'assets/icons/fire.png',
  //                     width: 30,
  //                     height: 30,
  //                   ),
  //                   Text(
  //                     'Up Comming Promotion',
  //                     style: TextStyle(
  //                         fontWeight: FontWeight.bold,
  //                         fontSize: 17,
  //                         color: Colors.green),
  //                   ),
  //                 ]),
  //                 Text(
  //                   'Show all',
  //                   style: TextStyle(
  //                       fontWeight: FontWeight.bold, color: Colors.blue),
  //                 )
  //               ],
  //             ),
  //           ),
  //           Container(
  //             width: double.infinity,
  //             height: 240,
  //             child: ListView.separated(
  //                 scrollDirection: Axis.horizontal,
  //                 itemBuilder: ((context, index) => Stack(children: [
  //                       Container(
  //                         padding: EdgeInsets.all(8),
  //                         child: Column(
  //                           children: [
  //                             Expanded(
  //                                 flex: 3,
  //                                 child: Container(
  //                                   width: size.width * 0.8,
  //                                   decoration: BoxDecoration(
  //                                     color: Colors.white,
  //                                     boxShadow: [
  //                                       BoxShadow(
  //                                         color: Colors.grey.withOpacity(0.2),
  //                                         spreadRadius: 3,
  //                                         blurRadius: 3,
  //                                         offset: Offset(0,
  //                                             2), // changes position of shadow
  //                                       ),
  //                                     ],
  //                                     borderRadius: BorderRadius.circular(20),
  //                                   ),
  //                                   child: Padding(
  //                                     padding: const EdgeInsets.all(10.0),
  //                                     child: Row(
  //                                       children: [
  //                                         Expanded(
  //                                             child: Container(
  //                                           child: Column(
  //                                             crossAxisAlignment:
  //                                                 CrossAxisAlignment.start,
  //                                             children: [
  //                                               Row(
  //                                                 children: [
  //                                                   CircleAvatar(
  //                                                     foregroundImage: AssetImage(
  //                                                         'assets/images/iam_game.jpg'),
  //                                                   ),
  //                                                   SizedBox(
  //                                                     width: 10,
  //                                                   ),
  //                                                   Column(
  //                                                     crossAxisAlignment:
  //                                                         CrossAxisAlignment
  //                                                             .start,
  //                                                     children: [
  //                                                       Text(
  //                                                         'EDM III CLUB',
  //                                                         style: TextStyle(
  //                                                             fontWeight:
  //                                                                 FontWeight
  //                                                                     .bold,
  //                                                             fontSize: 16),
  //                                                       ),
  //                                                       Text(
  //                                                         'PHNOMPHEN',
  //                                                         style: TextStyle(
  //                                                           fontWeight:
  //                                                               FontWeight.bold,
  //                                                         ),
  //                                                       )
  //                                                     ],
  //                                                   )
  //                                                 ],
  //                                               ),
  //                                               Divider(
  //                                                 thickness:
  //                                                     1, // thickness of the line
  //                                                 // empty space to the leading edge of divider.
  //                                                 endIndent:
  //                                                     20, // empty space to the trailing edge of the divider.
  //                                                 color: Colors.grey,
  //                                                 // The color to use when painting the line.
  //                                               ),
  //                                               Padding(
  //                                                 padding:
  //                                                     const EdgeInsets.all(16),
  //                                                 child: Column(
  //                                                   crossAxisAlignment:
  //                                                       CrossAxisAlignment
  //                                                           .start,
  //                                                   children: [
  //                                                     Text(
  //                                                       'Buy wishky 2',
  //                                                       style: TextStyle(
  //                                                           fontWeight:
  //                                                               FontWeight.bold,
  //                                                           fontSize: 16),
  //                                                     ),
  //                                                     Text(
  //                                                       'get 1 Free',
  //                                                       style: TextStyle(
  //                                                           fontWeight:
  //                                                               FontWeight.bold,
  //                                                           fontSize: 16),
  //                                                     ),
  //                                                     SizedBox(
  //                                                       height: 30,
  //                                                     ),
  //                                                     Text(
  //                                                       '01 August 2022',
  //                                                       style: TextStyle(
  //                                                           fontWeight:
  //                                                               FontWeight.bold,
  //                                                           color:
  //                                                               Colors.amber),
  //                                                     ),
  //                                                     Text(
  //                                                       'USD xxx',
  //                                                       style: TextStyle(
  //                                                           fontWeight:
  //                                                               FontWeight.bold,
  //                                                           color:
  //                                                               Colors.amber),
  //                                                     ),
  //                                                   ],
  //                                                 ),
  //                                               ),
  //                                             ],
  //                                           ),
  //                                         )),
  //                                         Expanded(
  //                                             child: Container(
  //                                           decoration: BoxDecoration(
  //                                             borderRadius:
  //                                                 BorderRadius.circular(20),
  //                                             image: DecorationImage(
  //                                                 image: AssetImage(
  //                                                     'assets/images/iam_game.jpg'),
  //                                                 fit: BoxFit.cover),
  //                                             //color: Colors.red,
  //                                           ),
  //                                         ))
  //                                       ],
  //                                     ),
  //                                   ),
  //                                 )),
  //                           ],
  //                         ),
  //                       ),
  //                     ])),
  //                 separatorBuilder: (index, _) => SizedBox(
  //                       width: 10,
  //                     ),
  //                 itemCount: promoItem.length),
  //           )
  //         ],
  //       ));
  // }

  // Widget _buildExpirePromotion() {
  //   var size = MediaQuery.of(context).size;
  //   return Container(
  //       margin: EdgeInsets.only(top: 10),
  //       width: double.infinity,
  //       height: 290,
  //       color: Colors.white,
  //       child: Column(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Row(
  //                   children: [
  //                     Image.asset(
  //                       'assets/icons/wacth.png',
  //                       width: 30,
  //                       height: 30,
  //                     ),
  //                     Text(
  //                       'Expire Promotion',
  //                       style: TextStyle(
  //                           fontWeight: FontWeight.bold,
  //                           fontSize: 17,
  //                           color: Color.fromARGB(255, 215, 164, 10)),
  //                     ),
  //                   ],
  //                 ),
  //                 Text(
  //                   'Show all',
  //                   style: TextStyle(
  //                       fontWeight: FontWeight.bold, color: Colors.blue),
  //                 )
  //               ],
  //             ),
  //           ),
  //           Container(
  //             width: double.infinity,
  //             height: 230,
  //             child: ListView.separated(
  //                 scrollDirection: Axis.horizontal,
  //                 itemBuilder: ((context, index) => Stack(children: [
  //                       Container(
  //                           padding: EdgeInsets.all(8),
  //                           child: Column(children: [
  //                             Expanded(
  //                               flex: 2,
  //                               child: Container(
  //                                 height: 200,
  //                                 width: size.width * 0.8,
  //                                 decoration: BoxDecoration(
  //                                   color: Colors.blue,
  //                                   boxShadow: [
  //                                     BoxShadow(
  //                                       color: Colors.grey.withOpacity(0.2),
  //                                       spreadRadius: 3,
  //                                       blurRadius: 3,
  //                                       offset: Offset(
  //                                           0, 2), // changes position of shadow
  //                                     ),
  //                                   ],
  //                                   borderRadius: BorderRadius.circular(20),
  //                                 ),
  //                               ),
  //                             ),
  //                             SizedBox(
  //                               height: 10,
  //                             ),
  //                             Expanded(
  //                               child: Container(
  //                                 padding: EdgeInsets.all(8),
  //                                 width: size.width * 0.8,
  //                                 decoration: BoxDecoration(
  //                                   borderRadius: BorderRadius.circular(20),
  //                                 ),
  //                                 child: Column(
  //                                   children: [
  //                                     Row(
  //                                       children: [
  //                                         CircleAvatar(
  //                                           foregroundImage: AssetImage(
  //                                               'assets/images/iam_game.jpg'),
  //                                         ),
  //                                         SizedBox(
  //                                           width: 10,
  //                                         ),
  //                                         Column(
  //                                           crossAxisAlignment:
  //                                               CrossAxisAlignment.start,
  //                                           children: [
  //                                             Text(
  //                                               'EDM III CLUB',
  //                                               style: TextStyle(
  //                                                   fontWeight: FontWeight.bold,
  //                                                   fontSize: 16),
  //                                             ),
  //                                             Text(
  //                                               'PHNOMPHEN',
  //                                               style: TextStyle(
  //                                                 fontWeight: FontWeight.bold,
  //                                               ),
  //                                             )
  //                                           ],
  //                                         )
  //                                       ],
  //                                     ),
  //                                   ],
  //                                 ),
  //                               ),
  //                             ),
  //                           ]))
  //                     ])),
  //                 separatorBuilder: (index, _) => SizedBox(
  //                       width: 10,
  //                     ),
  //                 itemCount: promoItem.length),
  //           )
  //         ],
  //       ));
  // }
}
