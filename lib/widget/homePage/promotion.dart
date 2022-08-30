import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../model/promot_model.dart';

class Pormotion extends StatelessWidget {
  final promoItem = PromotModel.generatlist();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 200,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/i_map.png',
                        width: 30,
                        height: 30,
                      ),
                      Text(
                        'Promotion',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
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
            Container(
              // width: double.infinity,
              height: 160,

              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => Stack(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(top: 8, left: 8, bottom: 8),
                            child: Column(
                              children: [
                                Expanded(
                                    child: Container(
                                  width: 105,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image:
                                              AssetImage(promoItem[index].ima),
                                          fit: BoxFit.cover)),
                                )),
                                SizedBox(
                                  height: 5,
                                ),
                                ClipPath(
                                  clipper: MovieTicketClipper(),
                                  child: Container(
                                    width: 105,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              foregroundImage: AssetImage(
                                                  promoItem[index].proImg),
                                              radius: 12,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'GONG CHA \nAEONMALL II',
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 50,
                            right: 0,
                            child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(226, 243, 241, 241),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10))),
                              child: Row(
                                children: [
                                  Text(
                                    promoItem[index].dicount,
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    promoItem[index].ofdic,
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                  separatorBuilder: (index, _) => SizedBox(
                        width: 10,
                      ),
                  itemCount: promoItem.length),
            ),
          ],
        ));
  }
}
