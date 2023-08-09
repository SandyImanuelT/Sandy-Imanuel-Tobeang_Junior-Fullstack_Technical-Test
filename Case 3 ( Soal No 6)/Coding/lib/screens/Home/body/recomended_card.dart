import 'package:flutter/material.dart';
import 'package:flutter_authentication/screens/Home/body/model/recomended.dart';

import '../../../utilities/colors.dart';

class RecomendedCard extends StatelessWidget {
  final Recomended recomended;
  final VoidCallback press;
  const RecomendedCard({
    Key? key,
    required this.recomended,
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
          height: 250,
          width: 200,
          decoration: BoxDecoration(
              color: kWhiteClr, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(recomended.image))),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  recomended.name,
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
                      recomended.price,
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
