import 'package:flutter/material.dart';

class HomeDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width * 1 / 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Grow Your\nBusiness\nFaster",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
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
                  height: 10,
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
                    ))
              ],
            ),
          ),
          Column(
            children: [
              Container(
                child: Image.asset(
                  "assets/Images/HomeView/landing_1.png",
                  width: MediaQuery.sizeOf(context).width * 1 / 1.664,
                  height: 700,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
