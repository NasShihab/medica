List eviewList = [
  ReviewListClass(
      'Charlee Hemlin',
      4.5,
      'You never know when you might need to see an orthopedic surgeon. '
          'From cradle to casket, accidents and injuries are an inevitable ', 50),
  ReviewListClass(
      'Charlee ',
      3.5,
      'While the young and fit can recover from injuries with conventional treatment, '
          'we might find our joints don\'t respond the same way as we age. Tissue such ', 55),
  ReviewListClass(
      'Charlee Hemlin',
      2.5,
      'While the young and fit can recover from injuries with conventional treatment, '
          'we might find our joints don\'t respond the same way as we age. Tissue such ', 60),
  ReviewListClass(
      'Charlee ',
      1.5,
      'While the young and fit can recover from injuries with conventional treatment, '
          'we might find our joints don\'t respond the same way as we age. Tissue such ', 100),
  ReviewListClass(
      'Charlee Hemlin',
      0.5,
      'While the young and fit can recover from injuries with conventional treatment, '
          'we might find our joints don\'t respond the same way as we age. Tissue such ', 60),
];

class ReviewListClass {
  final String reviewerName;
  final double reviewerRating;
  final String reviewerComments;
  final int reviewerLikes;


  ReviewListClass(
    this.reviewerName,
    this.reviewerRating,
    this.reviewerComments,
    this.reviewerLikes,
  );
}
