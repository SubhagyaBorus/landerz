import 'package:flutter/material.dart';

class HomeTabletView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                child: Image.asset(
                  "assets/Images/HomeView/landing_1.png",
                  width: MediaQuery.sizeOf(context).width * 1 / 1.3,
                  height: 350,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Grow Your Business Faster",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, letterSpacing: 3),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 600,
            child: Text(
              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam assumenda ea quo cupiditate facere deleniti fuga officia.",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1.4,
                  height: 1.5),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              alignment: Alignment.center,
              height: 60,
              width: 180,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 210, 181, 60),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "Get Starter",
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
