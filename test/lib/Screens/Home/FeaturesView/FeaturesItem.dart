import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FeaturesItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String paragraph;

  FeaturesItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.paragraph});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (p0) => Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        width: 350,
        height: 320,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.white60,
                  blurRadius: 3,
                  blurStyle: BlurStyle.inner)
            ],
            color: Color.fromRGBO(255, 255, 255, 50),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 210, 181, 60),
                      borderRadius: BorderRadius.circular(100)),
                  child: Icon(
                    icon,
                    size: 30,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  paragraph,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 2,
                      height: 1.3),
                  overflow: TextOverflow.clip,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "Learn More",
                  style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                      color: Color.fromRGBO(0, 210, 181, 60),
                      fontWeight: FontWeight.w200),
                ),
              )
            ]),
      ),
    );
  }
}
