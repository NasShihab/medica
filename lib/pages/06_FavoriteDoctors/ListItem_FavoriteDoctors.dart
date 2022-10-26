List fvDoctorsList = [
  fvDoctorsClass(
    'assets/images/doctors/doctor3.png',
    'Dr. Becky B Cans',
    'Category',
    'Hospital',
    2.5,
    100,
  ),
  fvDoctorsClass(
    'assets/images/doctors/doctor3.png',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    3.5,
    566,
  ),
  fvDoctorsClass(
    'assets/images/doctors/doctor1.jpg',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    4.5,
    520,
  ),
  fvDoctorsClass(
    'assets/images/doctors/doctor3.png',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    5.0,
    658,
  ),
  fvDoctorsClass(
    'assets/images/doctors/doctor1.jpg',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    1.5,
    987,
  ),
  fvDoctorsClass(
    'assets/images/doctors/doctor2.jpg',
    'Dr. Andrew Miky',
    'Category',
    'Hospital',
    4.0,
    256,
  ),
  fvDoctorsClass(
    'assets/images/doctors/doctor1.jpg',
    'Dr. Andrew Miky',
    'Category',
    'Hospital',
    4.5,
    369,
  ),
];

class fvDoctorsClass {
  final String doctorsImage;
  final String doctorsName;
  final String doctorsCategory;
  final String doctorsHospital;
  final double doctorsRating;
  final int doctorsReviews;

  fvDoctorsClass(this.doctorsImage, this.doctorsName, this.doctorsCategory,
      this.doctorsHospital, this.doctorsRating, this.doctorsReviews);
}
