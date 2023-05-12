import 'package:flutter_application/data/repository/valorant_repository.dart';

import '../../data/model/agents_response_entity.dart';

abstract class AgentsUseCase {
  List<AgentsResponseData> getAgents();
}

class AgentsUseCaseImpl implements AgentsUseCase {
  final AgentsRepository _repository;

  AgentsUseCaseImpl(this._repository);

  @override
  List<AgentsResponseData> getAgents() {
    List<AgentsResponseData> agentsFilltered = [];

    _repository.getAgents().then((value) {
      List<AgentsResponseData> agents = value.data;

      for (AgentsResponseData agent in agents) {
        if (agent.isPlayableCharacter == true) {
          agentsFilltered.add(agent);
        }
      }
    });
    return agentsFilltered;
  }
}
