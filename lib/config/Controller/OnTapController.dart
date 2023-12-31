import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnTapController extends GetxController {
  final home = GlobalKey();
  final features = GlobalKey();
  final about = GlobalKey();
  final tesi = GlobalKey();
  final contactus = GlobalKey();
  final blogs = GlobalKey();
  bool shouldScrollToHome = true; // Example condition
  bool shouldScrollTofeatures = false; // Example condition
  bool shouldScrollToAbout = false; // Example condition
  bool shouldScrollToTesti = false; // Example condition

  bool shouldScrollToContact = false; // Example condition
  bool shouldScrollToBlogs = false; // Example condition

  Future scrollToHome() async {
    final context = home.currentContext!;

    await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
  }

  Future scrollToFeatures() async {
    final context = features.currentContext!;

    await Scrollable.ensureVisible(context,
        duration: Duration(seconds: 1), alignment: 0);
  }

  Future scrollToAbout() async {
    final context = about.currentContext!;

    await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
  }

  Future scrollToTesi() async {
    final context = tesi.currentContext!;

    await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
  }

  Future scrollToContact() async {
    final context = contactus.currentContext!;

    await Scrollable.ensureVisible(context,
        duration: Duration(seconds: 1), alignment: 0.2);
  }

  Future scrollToBlogs() async {
    final context = blogs.currentContext!;

    await Scrollable.ensureVisible(context,
        duration: Duration(
          seconds: 1,
        ),
        alignment: 0.1);
  }

  @override
  void onClose() {
    if (shouldScrollToHome) {
      scrollToHome();
    } else if (shouldScrollTofeatures) {
      scrollToFeatures();
    } else if (shouldScrollToAbout) {
      scrollToAbout();
    } else if (shouldScrollToTesti) {
      scrollToTesi();
    } else if (shouldScrollToBlogs) {
      scrollToBlogs();
    } else if (shouldScrollToContact) {
      scrollToContact();
    }

    super.onClose();
  }
}
