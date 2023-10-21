class ApiReturnValue<T> {
  ApiReturnValue({
    this.value,
    this.message,
  });

  final T? value;
  final String? message;

  bool get isSuccess => value != null;
  bool get hasError => message != null;
}
