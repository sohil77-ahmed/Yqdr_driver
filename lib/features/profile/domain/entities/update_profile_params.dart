class UpdateProfileParams {
  final String name;
  final String phone;
  final String? email;

  UpdateProfileParams({required this.name, required this.phone, this.email});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['phone'] = phone;
    data['email'] = email ?? "";
    return data;
  }
}
