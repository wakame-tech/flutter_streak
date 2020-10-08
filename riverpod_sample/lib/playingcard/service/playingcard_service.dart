import 'package:flutter/foundation.dart';
import 'package:riverpod_sample/playingcard/repository/playingcard_repository.dart';

class PlayingCardService {
  PlayingCardService({@required this.repo});

  PlayingCardRepository repo;

  List<List<PlayingCard>> getPlayersDecks(int players) => repo.getPlayersDecks(players);
}
