import 'package:flutter/material.dart';

import 'ProjectViewItem.dart';

class ProjectDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/Images/ProjectView/1.png",
                        width: MediaQuery.sizeOf(context).width * 1 / 1.915,
                        height: 600,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Text(
                        "Create interactive\nprototypes",
                        style: TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1 / 3.5,
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
                      height: 20,
                    ),
                    ProjectViewItem(
                        title: "Amalia G.",
                        image: "assets/Images/ProjectView/person1.png")
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: Divider(
              height: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width * 1 / 26),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Text(
                        "Create interactive\nprototypes",
                        style: TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 450,
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
                      height: 20,
                    ),
                    ProjectViewItem(
                        title: "Darren K.",
                        image: "assets/Images/ProjectView/person2.jpg")
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset(
                      "assets/Images/ProjectView/2.png",
                      width: MediaQuery.sizeOf(context).width * 1 / 2.1,
                      height: 600,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget IconAndTitle(String title) {
    return Row(
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
    );
  }
}
