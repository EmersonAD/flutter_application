import 'dart:io';

import '../../model/agents_response_entity.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class ValorantService {
  Future<AgentsResponseEntity> getAgents();
}

class ValorantServiceImpl implements ValorantService {
  final http.Client client;

  static const String baseUrl = "https://valorant-api.com/v1/";
  static String agentsEndPoint = "agents";
  String getUrl() => baseUrl + agentsEndPoint;

  ValorantServiceImpl(this.client);

  @override
  Future<AgentsResponseEntity> getAgents() async {
    http.Response response = await client.get(
      Uri.parse(getUrl()),
      headers: {
        "conent-type": "application/json",
      },
    );

    if (response.statusCode != 200) {
      throw HttpException(response.body);
    }

    AgentsResponseEntity agentsResponseEntity =
        AgentsResponseEntity.fromJson(json.decode(response.body));

    return agentsResponseEntity;
  }
}
