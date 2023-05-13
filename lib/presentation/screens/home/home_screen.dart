import 'package:flutter/material.dart';
import 'package:flutter_application/core/usecase/agents_usecase.dart';
import 'package:flutter_application/data/repository/valorant_repository.dart';
import 'package:flutter_application/data/service/interceptor/http_client.dart';
import 'package:flutter_application/data/service/valorant/valorant_service.dart';
import 'package:flutter_application/presentation/screens/home/viewmodel/home_viewmodel.dart';
import 'package:flutter_application/presentation/widgets/character_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<CharacterCard>> agents = HomeViewModel(AgentsUseCaseImpl(
            AgentsRepositoryImpl(ValorantServiceImpl(HttpClient.client))))
        .getAllAgents();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Application'),
      ),
      body: FutureBuilder<List<CharacterCard>>(
        future: agents,
        builder: (context, snapshot) {
          List<CharacterCard>? agentsList = snapshot.data;
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.active:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasData && agentsList != null) {
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    CharacterCard agent = agentsList[index];
                    return agent;
                  },
                  itemCount: agentsList.length,
                );
              }
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
