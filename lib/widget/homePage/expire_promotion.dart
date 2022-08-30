import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../model/promot_model.dart';

class ExpirePromotion extends StatelessWidget {
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
                        'assets/icons/i_time.png',
                        width: 30,
                        height: 30,
                      ),
                      Text(
                        'Expire Promotion',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.amber),
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
                                    flex: 2,
                                    child: Container(
                                      width: 300,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  promoItem[index].ima),
                                              fit: BoxFit.cover)),
                                    )),
                                Expanded(
                                    child: Container(
                                  padding: EdgeInsets.all(8),
                                  height: 150,
                                  width: 300,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'GONG CHA \nAEONMALL II',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ),
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
