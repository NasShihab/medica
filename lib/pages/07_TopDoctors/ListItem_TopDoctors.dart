
List TopDoctorsList = [
  TopDoctorsClass(
    'assets/images/doctors/doctor1.jpg', 'Dr. Becky B Cans', 'NurologistPharma',  'Ibne Sina Hospital', 2.5, 800,
  ),
  TopDoctorsClass(
    'assets/images/doctors/doctor3.png',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    2.5,
    800,
  ),
  TopDoctorsClass(
    'assets/images/doctors/doctor1.jpg',
    'Dr. Salina Gomes',
    'Category',
    'Hospital',
    2.5,
    800,
  ),
  TopDoctorsClass(
    'assets/images/doctors/doctor3.png',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    2.5,
    800,
  ),
  TopDoctorsClass(
    'assets/images/doctors/doctor1.jpg',
    'Dr. Becky Cans',
    'Category',
    'Hospital',
    2.5,
    800,
  ),
  TopDoctorsClass(
    'assets/images/doctors/doctor2.jpg',
    'Dr. Andrew Mikey',
    'Category',
    'Hospital',
    4.5,
    600,
  ),
  TopDoctorsClass(
    'assets/images/doctors/doctor1.jpg',
    'Dr. Andrew Micky',
    'Category',
    'Hospital',
    4.0,
    900,
  ),
];

class TopDoctorsClass {
  final String doctorsImage;
  final String doctorsName;
  final String doctorsCategory;
  final String doctorsHospital;
  final double doctorsRating;
  final int doctorsReviews;

  TopDoctorsClass(this.doctorsImage, this.doctorsName, this.doctorsCategory, this.doctorsHospital, this.doctorsRating, this.doctorsReviews
  );
}
