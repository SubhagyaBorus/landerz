import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutUsMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(246, 246, 246, 10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: const Text(
              "About Us",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset(
                  "assets/Images/AboutUsView/1.jpg",
                  height: 400,
                  width: 450,
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text("Create interactive prototypes",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w200,
                    height: 1.2,
                    letterSpacing: 1)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 1 / 1.1,
            child: Text(
              "Eos cumque optio dolores excepturi rerum temporibus magni recusandae eveniet, totam omnis consectetur maxime quibusdam expedita dolorem dolor nobis dicta labore quaerat esse magnam unde, aperiam delectus! At maiores, itaque.",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1.4,
                  height: 1.8),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.only(right: 200),
              alignment: Alignment.center,
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 210, 181, 60),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "Learn More",
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
