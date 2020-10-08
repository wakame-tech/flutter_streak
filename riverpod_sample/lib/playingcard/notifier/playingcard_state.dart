import 'package:riverpod_sample/playingcard/model/player.dart';
import 'package:riverpod_sample/playingcard/service/playingcard_service.dart';
import 'package:state_notifier/state_notifier.dart';

class PlayingCardNotifier extends StateNotifier<List<Player>>
    with LocatorMixin {
  PlayingCardNotifier({this.playingCardService}) : super([]);

  PlayingCardService playingCardService;

  void addPlayer(String name) {
    final player = Player(name: name);
    state = [...state, player];
  }

  void distributeCards() {
    final decks = playingCardService.getPlayersDecks(state.length);
    state = state.map((player) => player.copyWith(deck: ))
  }
}
