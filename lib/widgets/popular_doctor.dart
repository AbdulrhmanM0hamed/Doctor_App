import 'package:doctor_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'avatar_image.dart';

class PopularDoctor extends StatelessWidget {
  PopularDoctor({Key? key, required this.doctor}) : super(key: key);
  var doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(15),
        width: 330,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Color(0xffDCEDF9),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AvatarImage(
              doctor["image"],
              height: 120,
              width: 90,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  doctor["name"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  doctor["skill"],
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 89, 88, 88)),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "${doctor["review"]} ${S.current.review}",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
