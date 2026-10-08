class ResetPasswordParams {
  final String oldPassword;
  final String newPassword;
  final String newPasswordConfirmation;

  ResetPasswordParams({required this.oldPassword, required this.newPassword, required this.newPasswordConfirmation});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_password'] = oldPassword;
    data['new_password'] = newPassword;
    data['new_password_confirmation'] = newPasswordConfirmation;
    return data;
  }
}