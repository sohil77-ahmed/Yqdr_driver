import 'dart:math';

class RegisterParams {
  final String name;
  final String? email;
  final String phone;
  final int categoryId;
  final String carNumber;
  final String iban;
  final int packageId;
  final String password;
  final String confirmPassword;

  RegisterParams(
      {required this.name,
      this.email,
      required this.phone,
      required this.categoryId,
      required this.carNumber,
      required this.iban,
      required this.packageId,
      required this.password,
      required this.confirmPassword});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email ?? "";
    data['phone'] = phone;
    data['category_id'] = categoryId;
    data['car_no'] = carNumber;
    data['iban'] = iban;
    data['package_id'] = packageId;
    data['password'] = password;
    data['password_confirmation'] = confirmPassword;
    return data;
  }
}
