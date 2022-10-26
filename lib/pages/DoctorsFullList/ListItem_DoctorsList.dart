List DoctorsFullData = [
  DoctorsFullList('assets/images/doctors/doctor3.png', 'Dr. Becky Cans',
      'Category', 'Hospital', 2.5, 800, 1001, 10, 'About', 'Working Time 2'),
  DoctorsFullList('assets/images/doctors/doctor3.png', 'Dr. Becky Cans',
      'Category', 'Hospital', 2.5, 800, 1001, 10, 'About', 'Working Time'),
  DoctorsFullList('assets/images/doctors/doctor3.png', 'Dr. Becky Cans',
      'Category', 'Hospital', 2.5, 800, 1001, 10, 'About', 'Working Time'),
  DoctorsFullList('assets/images/doctors/doctor3.png', 'Dr. Becky Cans',
      'Category', 'Hospital', 2.5, 800, 1001, 10, 'About', 'Working Time'),
  DoctorsFullList('assets/images/doctors/doctor3.png', 'Dr. Becky Cans',
      'Category', 'Hospital', 2.5, 800, 1001, 10, 'About', 'Working Time'),
  DoctorsFullList('assets/images/doctors/doctor3.png', 'Dr. Becky Cans',
      'Category', 'Hospital', 2.5, 800, 1001, 10, 'About', 'Working Time'),
  DoctorsFullList('assets/images/doctors/doctor3.png', 'Dr. Becky Cans',
      'Category', 'Hospital', 2.5, 800, 1001, 10, 'About', 'Working Time'),
];

class DoctorsFullList {
  final String doctorsImage;
  final String doctorsName;
  final String doctorsCategory;
  final String doctorsHospital;
  final double doctorsRating;
  final int doctorsReviews;
  final int doctorsPatient;
  final int doctorsExperience;
  final String doctorsAbout;
  final String doctorsWorkingTime;

  DoctorsFullList(
    this.doctorsImage,
    this.doctorsName,
    this.doctorsCategory,
    this.doctorsHospital,
    this.doctorsRating,
    this.doctorsReviews,
    this.doctorsPatient,
    this.doctorsExperience,
    this.doctorsAbout,
    this.doctorsWorkingTime,
  );
}
