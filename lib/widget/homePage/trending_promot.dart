import 'package:dotted_line/dotted_line.dart';
import 'package:e_commer_app/model/tranding_model.dart';
import 'package:flutter/material.dart';

import '../../model/promot_model.dart';

class TrendingPromot extends StatelessWidget {
  final trendingItem = TrendingModel.generatlist();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 210,
        color: Colors.white,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/i_lire.png',
                      width: 30,
                      height: 30,
                    ),
                    Text(
                      'Trending Promotion',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                                                      foregroundImage:
                                                          AssetImage(
                                                              trendingItem[
                                                                      index]
                                                                  .proImg),
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
                                                          trendingItem[index]
                                                              .name,
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                          trendingItem[index]
                                                              .location,
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
                                                    lineThickness: 1,
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
                                                                Text(trendingItem[
                                                                        index]
                                                                    .dicount),
                                                                Text(trendingItem[
                                                                        index]
                                                                    .ofdic),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  trendingItem[
                                                                          index]
                                                                      .date,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .amber,
                                                                      fontSize:
                                                                          13),
                                                                ),
                                                                Text(
                                                                  '${trendingItem[index].pric}',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .amber,
                                                                      fontSize:
                                                                          13),
                                                                ),
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
                                                    trendingItem[index].img),
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
                  itemCount: trendingItem.length))
        ]));
  }
}
