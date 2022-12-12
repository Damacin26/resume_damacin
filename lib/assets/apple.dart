var email = 'stefdamacin@gmail.com';
var password = 'apple123';

dynamic name = "Name";
dynamic phonenumber = "Phonenumber";
dynamic gmail = "Gmail";
dynamic address = "Address";
dynamic password2 = "Password";

dynamic tertiary = "Tertiary";
dynamic tertiary_start = "Tertiary";
dynamic tertiary_end = "Tertiary";

dynamic secondary = "Secondary";
dynamic secondary_start = "Secondary";
dynamic secondary_end = "Secondary";

dynamic primary = "Primary";
dynamic primary_start = "Primary";
dynamic primary_end = "Primary";

dynamic certificate = "Certificate";
dynamic certificate_start = "Certificate";
dynamic certificate_end = "Certificate";

dynamic professional_summary = "Professional Summary ";
dynamic skills_1 = "Skills 1  ";
dynamic skills_1_description = "Skills 1 Description  ";

dynamic skills_2 = "Skills 1  ";
dynamic skills_2_description = "Skills 1 Description  ";





extension extString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }
}
