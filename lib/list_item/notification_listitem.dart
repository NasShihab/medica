List notificationList = [
  NotificationData('assets/images/profile2.png', 'Appointment Cancel',
      'Today | 9.30 AM', 'New'),

  NotificationData('assets/images/facebook.png', 'New Service Available',
      '14 December | 9.30 AM', 'New'),

  NotificationData('assets/images/profile2.png', 'Appointment Cancel',
      '25 October | 9.30 AM', 'New'),
];


class NotificationData {
  final String nTrailing;
  final String nLeading;
  final String nTitle;
  final String nSubtitle;

  NotificationData(
      this.nLeading,
      this.nTitle,
      this.nSubtitle,
      this.nTrailing,
      );
}
