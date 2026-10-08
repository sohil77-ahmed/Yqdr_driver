part of 'notifications_imports.dart';

class NotificationsScreen extends StatefulWidget {
  static final String name = 'notifications';
  static final String path = '/notifications';
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final NotificationsController controller = NotificationsController();

  @override
  void initState() {
    controller.getNotifications();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "الاشعارات",
      ),
      body: BaseBlocBuilder(
        bloc: controller.notificationsBloc,
        onSuccessWidget: (data) {
          final notifications = data?.data?.notifications ?? [];
          if (notifications.isEmpty) {
            return const EmptyNotificationsView();
          }
          return ListView.builder(
            itemCount: notifications.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final item = notifications[index];
              return NotificationItem(
                title: item.title ?? '',
                subtitle: item.message ?? '',
                time: item.date ?? '',
              );
            },
          );
        },
      ),
    );
  }
}
