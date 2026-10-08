class VerifyOtpParams {
  int userId;
  int otp;

  VerifyOtpParams({
    required this.userId,
    required this.otp,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['otp'] = otp;
    return data;
  }
}
