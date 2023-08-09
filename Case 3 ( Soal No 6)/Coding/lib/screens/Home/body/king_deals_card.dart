import 'package:flutter/material.dart';
import 'package:flutter_authentication/screens/Home/body/model/king_deals.dart';

import '../../../utilities/colors.dart';

class KingDealsCard extends StatelessWidget {
  final KingDeals kingDeals;
  final VoidCallback press;
  const KingDealsCard({
    Key? key,
    required this.kingDeals,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 200,
          width: 362,
          decoration: BoxDecoration(
              color: kWhiteClr, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(kingDeals.image))),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  kingDeals.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.price_check,
                      color: kPrimaryClr,
                    ),
                    Text(
                      kingDeals.price,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
