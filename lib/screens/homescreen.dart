import 'package:awesome_notification/notification/notification_service.dart';
import 'package:awesome_notification/notification/notificatoin_button.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:awesome_notification/flutter_notification.dart';
import 'package:awesome_notification/notification/notification_service.dart';
import 'package:awesome_notification/notification/notificatoin_button.dart';
import 'package:awesome_notification/notification/notification_service.dart' as notification_service;
import 'package:awesome_notification/notification/notificatoin_button.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              const Color.fromARGB(255, 37, 25, 25)!,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TopBar(title: "Awesome Notification"),
            NotifcationButton(
              text: "Normal Notification",
              onPressed: () async {
                await notification_service.NotificationService.showNotification(
                  title: "Title of the notification",
                  body: "Body of the Notification",
                );
              },
            ),
            NotifcationButton(
              text: "Notification with summary",
              onPressed: () async {
                await notification_service.NotificationService.showNotification(
                  title: "Title of the notification",
                  body: "Body of the Notification",
                  summary: "Small Summary",
                  notificationLayout: NotificationLayout.Inbox,
                );
              },
            ),
            NotifcationButton(
              text: "Progress Bar Notification",
              onPressed: () async {
                await notification_service.NotificationService.showNotification(
                  title: "Title of the Notification",
                  body: "Body of the Notication",
                  summary: "Small Summary",
                  notificationLayout: NotificationLayout.ProgressBar,
                );
              },
            ),
            NotifcationButton(
              text: "Big Image Notification",
              onPressed: () async {
                await notification_service.NotificationService.showNotification(
                  title: "title of the Notification",
                  body: "Body of the Notification",
                  summary: "Small Summary",
                  notificationLayout: NotificationLayout.BigPicture,
                  bigPicture: "https://images.app.goo.gl/CkyHXQUYam6Ucf5WA",
                );
              },
            ),
            NotifcationButton(
              text: "Action Button Notifications",
              onPressed: () async {
                await notification_service.NotificationService.showNotification(
                    title: "Title of the Notification",
                    body: "Body of the Notification",
                    payload: {
                      "navigate": "true",
                    },
                    actionButtons: [
                      NotificationActionButton(
                          key: "check",
                          label: "Check it out",
                          actionType: ActionType.SilentAction,
                          color: Colors.green),
                    ]);
              },
            ),
            NotifcationButton(
              text: "Scheduled Notification",
              onPressed: () async {
                await notification_service.NotificationService.showNotification(
                  title: "Scheduled Notification",
                  body: "Notification was fired after 5 seconds",
                  scheduled: true,
                  interval: 5,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
