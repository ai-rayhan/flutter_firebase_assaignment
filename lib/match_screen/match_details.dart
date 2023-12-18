import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MatchDetailsScreen extends StatelessWidget {
  final QueryDocumentSnapshot match;

  const MatchDetailsScreen({required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Match Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  Text('${match['team1']} vs ${match['team2']}'),
                  Text('${match['score_team1']} : ${match['score_team2']}'),
                  Text('Total time: ${match['total_time']}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
