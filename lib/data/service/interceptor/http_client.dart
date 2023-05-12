import 'package:http_interceptor/http/http.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class HttpClient {
  static http.Client client = InterceptedClient.build(interceptors: [_LoggingInterceptor()]);
}

class _LoggingInterceptor implements InterceptorContract {
  Logger logger = Logger(printer: PrettyPrinter(methodCount: 0));

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    logger.i('url: ${data.baseUrl}\nheaders: ${data.headers}\ncontent: ${data.body}');
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    logger.i('code: ${data.statusCode}\nheaders: ${data.headers}\ncontent: ${data.body}');
    return data;
  }

}