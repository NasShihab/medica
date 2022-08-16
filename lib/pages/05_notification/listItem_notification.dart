List tdata = [
  txdata('assets/images/profile2.png', 'Appointment Cancel',
      'Today | 9.30 AM', 'New'),

  txdata('assets/images/facebook.png', 'New Service Available',
      '14 December | 9.30 AM', 'New'),

  txdata('assets/images/profile2.png', 'Appointment Cancel',
      '25 October | 9.30 AM', 'New'),
];


class txdata {
  final String nTrailing;
  final String nLeading;
  final String nTitle;
  final String nSubtitle;

  txdata(
      this.nLeading,
      this.nTitle,
      this.nSubtitle,
      this.nTrailing,
      );
}
