part of 'notifications_imports.dart';

class NotificationsController {
  final BaseBloc<BaseResponse<NotificationsDataModel>?> notificationsBloc = BaseBloc();

  // final BaseResponse<NotificationsDataModel>? dummyNoti = BaseResponse(
  //   status: 1,
  //   message: 'dummmmyyyyy',
  //   data: NotificationsDataModel(
  //     notifications: [
  //       NotificationModel(
  //           id: 1,
  //           title: "test",
  //           message: "good morning",
  //           action: "open",
  //           link: null,
  //           orderId: null,
  //           date: "1 month ago"
  //       ),
  //     ],
  //   ),
  // );

  Future<void> getNotifications() async {
    notificationsBloc.loadingState();
    // await Future.delayed(Duration(seconds: 2));
    final result = await GetNotificationsUseCase()(1);
    notificationsBloc.successState(result);
  }
}
