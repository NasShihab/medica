List fvDoctorsList = [
  fvDoctorsClass(
    'assets/images/doctors/doctor3.png',
    'Dr. Becky B Cans',
    'Category',
    'Hospital',
    2.5,
    800,
  ),
  fvDoctorsClass(
    'assets/images/doctors/doctor3.png',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    2.5,
    800,
  ),
  fvDoctorsClass(
    'assets/images/doctors/doctor1.jpg',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    2.5,
    800,
  ),
  fvDoctorsClass(
    'assets/images/doctors/doctor3.png',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    2.5,
    800,
  ),
  fvDoctorsClass(
    'assets/images/doctors/doctor1.jpg',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    2.5,
    800,
  ),
  fvDoctorsClass(
    'assets/images/doctors/doctor2.jpg',
    'Dr. Andrew Miky',
    'Category',
    'Hospital',
    4.5,
    600,
  ),
  fvDoctorsClass(
    'assets/images/doctors/doctor1.jpg',
    'Dr. Andrew Miky',
    'Category',
    'Hospital',
    4.0,
    900,
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
