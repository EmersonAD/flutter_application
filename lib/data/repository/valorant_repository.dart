import 'package:flutter_application/data/model/agents_response_entity.dart';
import 'package:flutter_application/data/service/valorant/valorant_service.dart';

abstract class AgentsRepository {
  Future<AgentsResponseEntity> getAgents();
}

class AgentsRepositoryImpl implements AgentsRepository {
  final ValorantService _service;

  AgentsRepositoryImpl(this._service);

  @override
  Future<AgentsResponseEntity> getAgents() async {
    AgentsResponseEntity response = await _service.getAgents();
    if (response.data.isEmpty) {
      throw Exception('No agents found');
    }
    return response;
  }
}
