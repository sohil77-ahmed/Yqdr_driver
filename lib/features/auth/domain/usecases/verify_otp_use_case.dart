import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/auth/data/models/login_response_model/login_response_model.dart';
import 'package:base_structure/features/auth/domain/entities/verify_otp_params.dart';
import 'package:base_structure/features/auth/domain/repository/auth_repository.dart';

class VerifyOtpUseCase
    extends UseCase<BaseResponse<LoginResponseModel>?, VerifyOtpParams> {
  @override
  Future<BaseResponse<LoginResponseModel>?> call(VerifyOtpParams params) async {
    var result = await getIt<AuthRepository>().verifyOtp(params);
    return result.when(
      isSuccess: (data) => data,
      isError: (error) {
        return;
      },
    );
  }
}
