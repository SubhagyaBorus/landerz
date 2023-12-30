import 'package:flutter/material.dart';

import 'ProjectViewItem.dart';

class ProjectViewTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              "assets/Images/ProjectView/3.png",
              width: MediaQuery.sizeOf(context).width * 1 / 1,
              height: 500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 60),
                child: Text(
                  "Create interactive prototypes",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 60),
                width: MediaQuery.sizeOf(context).width * 1 / 1.2,
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem neque nisi architecto autem molestias corrupti officia veniam.",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 1.4,
                      height: 1.5),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              IconAndTitle("Adipisci excepturi aliquam"),
              SizedBox(
                height: 5,
              ),
              IconAndTitle("Deleniti labore reiciendis"),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 60),
                child: ProjectViewItem(
                    title: "Amalia G.",
                    image: "assets/Images/ProjectView/person1.png"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 50),
            child: Divider(
              height: 1,
            ),
          ),
          Container(
            child: Image.asset(
              "assets/Images/ProjectView/4.png",
              width: MediaQuery.sizeOf(context).width * 1 / 1,
              height: 500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 60),
                child: Text(
                  "Create interactive prototypes",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 60),
                width: MediaQuery.sizeOf(context).width * 1 / 1.2,
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem neque nisi architecto autem molestias corrupti officia veniam.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w200,
                    letterSpacing: 1.4,
                    height: 1.5,
                  ),
                  maxLines: 4,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              IconAndTitle("Laborum enim quasi at modi"),
              SizedBox(
                height: 5,
              ),
              IconAndTitle("Ad at tempore"),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 60),
                child: ProjectViewItem(
                    title: "Darren K.",
                    image: "assets/Images/ProjectView/person2.jpg"),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget IconAndTitle(String title) {
  return Container(
    padding: EdgeInsets.only(left: 60),
    child: Row(
      children: [
        Icon(
          Icons.check,
          color: Color.fromRGBO(139, 195, 74, 50),
        ),
        SizedBox(
          width: 10,
        ),
        Text(title,
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                letterSpacing: 1.4,
                height: 1.5))
      ],
    ),
  );
}
