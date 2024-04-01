import 'package:flutter/material.dart';

enum Sections {
  home,
  whoWeAre,
  associates,
  activities,
  contacts,
}

class PageNavigation {
  Map<Sections, GlobalKey>? sectionKeys;

  PageNavigation() {
    sectionKeys = {
      Sections.home: GlobalKey(),
      Sections.whoWeAre: GlobalKey(),
      Sections.associates: GlobalKey(),
      Sections.activities: GlobalKey(),
      Sections.contacts: GlobalKey(),
    };
  }

  get getSectionKeys => sectionKeys;
}
