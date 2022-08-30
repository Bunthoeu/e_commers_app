import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../model/promot_model.dart';

class CommintPromotion extends StatelessWidget {
  CommintPromotion({Key? key}) : super(key: key);
  final promoItem = PromotModel.generatlist();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 210,
        color: Colors.white,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/i_time.png',
                      width: 30,
                      height: 30,
                    ),
                    Text(
                      'Up Comming Promotion',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 59, 233, 65)),
                    ),
                  ],
                ),
                Text(
                  ' Show all',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.only(),

              // width: double.infinity,
              height: 160,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => Stack(children: [
                        Container(
                            height: 160,
                            width: 300,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/container.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          height: 160,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 8),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    CircleAvatar(
                                                      foregroundImage: AssetImage(
                                                          'assets/images/image1.jpg'),
                                                      radius: 15,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'EDM III CLUB ',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                          'PHNOMPENH',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                DottedLine(
                                                    dashColor: Color.fromARGB(
                                                        255, 235, 228, 228),
                                                    lineThickness: 2,
                                                    dashLength: 8),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              18.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            child: Column(
                                                              children: [
                                                                Text('Titel'),
                                                                Text('Titel'),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            child: Column(
                                                              children: [
                                                                Text('Titel'),
                                                                Text('Titel'),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          child: Container(
                                        margin: EdgeInsets.only(bottom: 15),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.red,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/iam_game.jpg'),
                                                fit: BoxFit.cover)),
                                        height: 145,
                                        width: 106,
                                      ))
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ])),
                  separatorBuilder: (index, _) => SizedBox(
                        width: 10,
                      ),
                  itemCount: promoItem.length))
        ]));
  }
}
