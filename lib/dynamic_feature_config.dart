class DynamicFeatureConfig {
  final String screen;
  final SuccessConfig success;
  final LoadingConfig loading;
  final ErrorConfig error;

  DynamicFeatureConfig({
    required this.screen,
    required this.success,
    required this.loading,
    required this.error,
  });

  factory DynamicFeatureConfig.fromJson(Map<String, dynamic> json) {
    return DynamicFeatureConfig(
      screen: json['screen'],
      success: SuccessConfig.fromJson(json['success']),
      loading: LoadingConfig.fromJson(json['loading']),
      error: ErrorConfig.fromJson(json['error']),
    );
  }
}

class SuccessConfig {
  final String type;
  final bool advanced;
  final bool isMapBoxControllerInitialized;
  final bool isFirstLaunch;

  SuccessConfig({
    required this.type,
    required this.advanced,
    required this.isMapBoxControllerInitialized,
    required this.isFirstLaunch,
  });

  factory SuccessConfig.fromJson(Map<String, dynamic> json) {
    return SuccessConfig(
      type: json['type'],
      advanced: json['advanced'],
      isMapBoxControllerInitialized: json['isMapBoxControllerInitialized'],
      isFirstLaunch: json['isFirstLanuch'],
    );
  }
}

class LoadingConfig {
  final String type;

  LoadingConfig({required this.type});

  factory LoadingConfig.fromJson(Map<String, dynamic> json) {
    return LoadingConfig(type: json['type']);
  }
}

class ErrorConfig {
  final String type;
  final bool retry;

  ErrorConfig({required this.type, required this.retry});

  factory ErrorConfig.fromJson(Map<String, dynamic> json) {
    return ErrorConfig(
      type: json['type'],
      retry: json['retry'],
    );
  }
}
