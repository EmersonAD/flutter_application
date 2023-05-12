abstract class AgentsUseCase {
    List<AgentsResponseData> getAgents();
}

class AgentsUseCaseImpl implements AgentsUseCase {
    final AgentsRepository repository;

    AgentsUseCaseImpl(this.repository);

}