part of dartlomacy;

class Game {

    String _id;

    List<Player> _players;

    /**
     * Creates a new [Game].
     */
    Game() {
        _id = new Uuid().v1();
        _players = [];
    }

    /**
     * Adds a [Player] to the game.
     */
    addPlayer(Player player) {
        _players.add(player);
    }

    /**
     * Returns a String representation of a [Game].
     */
    String toString() => "Game [$_id] - ${_players.length} player(s) $_players";
}