import 'package:flutter/material.dart';
import 'package:landerz/Screens/Home/ContactUsView/TextFieldWidget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactUsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(246, 246, 246, 10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 80, bottom: 50),
              child: const Text(
                "Get In Touch",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile
                      ? 15
                      : 0),
              width:
                  sizingInformation.deviceScreenType == DeviceScreenType.mobile
                      ? 500
                      : 600,
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.white60,
                    blurRadius: 3,
                    blurStyle: BlurStyle.inner)
              ], color: Color.fromRGBO(255, 255, 255, 50)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Contact Form",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w100,
                          letterSpacing: 2,
                          color: Colors.black.withOpacity(0.8)),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile
                        ? Column(
                            children: [
                              TextFieldWidget(
                                maxLines: 1,
                                title: "First Name",
                                height: 40,
                                width: 400,
                                hintText: "",
                              ),
                              TextFieldWidget(
                                maxLines: 1,
                                title: "Last Name",
                                height: 40,
                                width: 400,
                                hintText: "",
                              )
                            ],
                          )
                        : Row(
                            children: [
                              TextFieldWidget(
                                maxLines: 1,
                                title: "First Name",
                                height: 40,
                                width: 255,
                                hintText: "",
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              TextFieldWidget(
                                maxLines: 1,
                                title: "Last Name",
                                height: 40,
                                width: 255,
                                hintText: "",
                              )
                            ],
                          ),
                  ),
                  TextFieldWidget(
                    maxLines: 1,
                    title: "Email",
                    height: 40,
                    width: sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile
                        ? 400
                        : 530,
                    hintText: "",
                  ),
                  TextFieldWidget(
                    maxLines: 1,
                    title: "Subject",
                    height: 40,
                    width: sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile
                        ? 400
                        : 530,
                    hintText: "",
                  ),
                  TextFieldWidget(
                    maxLines: 15,
                    title: "Message",
                    height: 140,
                    width: sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile
                        ? 400
                        : 530,
                    hintText: "Write your note or question here...",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 210, 181, 60),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Send Message",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
