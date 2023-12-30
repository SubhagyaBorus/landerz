import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TextFieldWidget extends StatelessWidget {
  final String title;
  final double width;
  final double height;

  final String hintText;
  final int maxLines;
  const TextFieldWidget(
      {super.key,
      required this.title,
      required this.width,
      required this.height,
      required this.hintText,
      required this.maxLines});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(title,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 2)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height,
              width: width,
              child: TextFormField(
                maxLines: maxLines,
                decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: TextStyle(
                        letterSpacing: 2,
                        fontSize: sizingInformation.deviceScreenType ==
                                DeviceScreenType.mobile
                            ? 12
                            : null),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(0, 210, 181, 60),
                    )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26))),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
