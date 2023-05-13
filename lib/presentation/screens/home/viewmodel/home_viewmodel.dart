import 'package:flutter_application/core/logger/logger_util.dart';
import 'package:flutter_application/core/usecase/agents_usecase.dart';

import '../../../widgets/character_widget.dart';

class HomeViewModel {
  final AgentsUseCase _agentsUseCase;

  HomeViewModel(this._agentsUseCase);

  Future<List<CharacterCard>> getAllAgents() {
    return _agentsUseCase.getAgents().then((agents) {
      return agents;
    }).onError((error, stackTrace) {
      LoggerUtil.logger.e(error);
      return [];
    });
  }
}
