import 'package:badges/badges.dart' as badges;
import 'package:doctor_app/data/json.dart';
import 'package:doctor_app/theme/colors.dart';
import 'package:doctor_app/widgets/GetBestMedicalService.dart';
import 'package:doctor_app/widgets/category_box.dart';
import 'package:doctor_app/widgets/popular_doctor.dart';
import 'package:doctor_app/widgets/textbox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: badges.Badge(
              badgeStyle: badges.BadgeStyle(
                badgeColor: Colors.green,
                borderSide: BorderSide(color: Colors.white),
              ),
              position: badges.BadgePosition.topEnd(top: 7, end: -4),
              badgeContent: Text(
                '1',
                style: TextStyle(color: Colors.white),
              ),
              child: Icon(
                Icons.notifications_sharp,
                color: primary,
              ),
            ),
          )
        ],
      ),
      body: getBody(),
    );
  }

  getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            child: Text(
              "Hi,",
              style: TextStyle(
                  fontSize: 23, color: primary, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              child: Text(
            "Let's Find Your Doctor",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          )),
          SizedBox(
            height: 15,
          ),
          CustomTextBox(),
          SizedBox(
            height: 25,
          ),
          Container(
              child: Text(
            "Categories",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )),
          SizedBox(height: 10),
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 5),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryBox(
                  title: "Heart",
                  icon: Icons.favorite,
                  color: Colors.red,
                ),
                CategoryBox(
                  title: "Medical",
                  icon: Icons.local_hospital,
                  color: Colors.blue,
                ),
                CategoryBox(
                  title: "Dental",
                  icon: Icons.details_rounded,
                  color: Colors.purple,
                ),
                CategoryBox(
                  title: "Healing",
                  icon: Icons.healing_outlined,
                  color: Colors.green,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GetBestMedicalService(),
          SizedBox(
            height: 25,
          ),
          Container(
              child: Text(
            "Popular Doctors",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )),
          SizedBox(height: 10),
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 5),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PopularDoctor(
                  doctor: doctors[0],
                ),
                PopularDoctor(
                  doctor: doctors[1],
                ),
                PopularDoctor(
                  doctor: doctors[2],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
