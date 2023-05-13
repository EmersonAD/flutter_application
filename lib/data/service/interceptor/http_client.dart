import 'package:flutter_application/core/logger/logger_util.dart';
import 'package:http_interceptor/http/http.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class HttpClient {
  static http.Client client =
      InterceptedClient.build(interceptors: [_LoggingInterceptor()]);
}

class _LoggingInterceptor implements InterceptorContract {
  final Logger _logger = LoggerUtil.logger;

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    _logger.i(
        'url: ${data.baseUrl}\nheaders: ${data.headers}\ncontent: ${data.body}');
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    _logger.i(
        'code: ${data.statusCode}\nheaders: ${data.headers}\ncontent: ${data.body}');
    return data;
  }
}
