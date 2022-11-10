List favoriteDoctorList = [
  FavoriteDoctorClass(
    'assets/images/doctors/doctor3.png',
    'Dr. Becky B Cans',
    'Category',
    'Hospital',
    2.5,
    100,
  ),
  FavoriteDoctorClass(
    'assets/images/doctors/doctor3.png',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    3.5,
    566,
  ),
  FavoriteDoctorClass(
    'assets/images/doctors/doctor1.jpg',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    4.5,
    520,
  ),
  FavoriteDoctorClass(
    'assets/images/doctors/doctor3.png',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    5.0,
    658,
  ),
  FavoriteDoctorClass(
    'assets/images/doctors/doctor1.jpg',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    1.5,
    987,
  ),
  FavoriteDoctorClass(
    'assets/images/doctors/doctor2.jpg',
    'Dr. Andrew Miky',
    'Category',
    'Hospital',
    4.0,
    256,
  ),
  FavoriteDoctorClass(
    'assets/images/doctors/doctor1.jpg',
    'Dr. Andrew Miky',
    'Category',
    'Hospital',
    4.5,
    369,
  ),
];

class FavoriteDoctorClass {
  final String doctorsImage;
  final String doctorsName;
  final String doctorsCategory;
  final String doctorsHospital;
  final double doctorsRating;
  final int doctorsReviews;

  FavoriteDoctorClass(this.doctorsImage, this.doctorsName, this.doctorsCategory,
      this.doctorsHospital, this.doctorsRating, this.doctorsReviews);
}
