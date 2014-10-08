part of dartlomacy;

class LobbyView {

    static Logger logger = new Logger("LobbyView");

    Lobby _lobby;

    Element _content;

    Game _game;

    LobbyView(this._lobby) {
        _content = querySelector("#content");
        _content.children.clear();
        _addStartButton();
    }

    _addStartButton() {
        AnchorElement startGameButton = new AnchorElement()
                ..text = "Start Game"
                ..href = "#";
        startGameButton.onClick.listen(_startGame);
        _content.children.add(startGameButton);
    }

    _startGame(MouseEvent e) {
        _game = new Game();
        _game.addPlayer(new Player("Turbots"));

        logger.info("$_game");
    }
}
