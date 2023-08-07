import 'package:flutter/material.dart';
import 'package:sardordev/pages/add_event/add_event.dart';
import 'package:sardordev/pages/calendar/calendar_page.dart';
import 'package:sardordev/pages/details_edit/navigation_page.dart';
import 'package:sardordev/pages/navigation/navigation_page.dart';

class AppRoutes {
  static const String calendarScreen = '/calendar_screen';

  static const String detailsEventScreen = '/details_event_screen';

  static const String addEventScreen = '/add_event_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        calendarScreen: CalendarScreen.builder,
        detailsEventScreen: DetailsEventScreen.builder,
        addEventScreen: AddEventScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: CalendarScreen.builder
      };
}
