class BaseResponse<T> {
  final int status;
  final String message;
  final T? data;

  BaseResponse({
    required this.status,
    required this.message,
    this.data,
  });

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T? Function(dynamic json) fromJsonT,
  ) {
    return BaseResponse<T>(
      status: json['status'] ?? 0,
      message: json['message'] ?? '',
      data: json['data'] != null ? fromJsonT(json['data']) : null,
    );
  }
}
