import 'package:flutter_application/data/repository/valorant_repository.dart';
import 'package:flutter_application/presentation/widgets/ability_widget.dart';
import 'package:flutter_application/presentation/widgets/character_widget.dart';

import '../../data/model/agents_response_entity.dart';

abstract class AgentsUseCase {
  Future<List<CharacterCard>> getAgents();
}

class AgentsUseCaseImpl implements AgentsUseCase {
  final AgentsRepository _repository;

  AgentsUseCaseImpl(this._repository);

  @override
  Future<List<CharacterCard>> getAgents() async {
    List<CharacterCard> playableAgents = [];
    AgentsResponseEntity response = await _repository.getAgents();

    for (AgentsResponseData agent in response.data) {
      if (agent.isPlayableCharacter) {
        agent.backgroundGradientColors;
        playableAgents.add(
          CharacterCard(
            name: agent.displayName.toUpperCase(),
            role: agent.role.displayName.toUpperCase(),
            background: agent.background,
            characterImage: agent.fullPortrait,
            roleDescription: agent.role.description,
            roleImage: agent.role.displayIcon,
            abilities: getAbilities(agent),
          ),
        );
      }
    }

    return playableAgents;
  }

  List<AbilityWidget> getAbilities(AgentsResponseData agent) {
    List<AbilityWidget> abilities = [];
    for (var ability in agent.abilities) {
      abilities.add(
        AbilityWidget(
          ability: ability.displayName,
          abilityImage: ability.displayIcon,
        ),
      );
    }
    return abilities;
  }
}
