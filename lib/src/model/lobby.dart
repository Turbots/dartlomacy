part of dartlomacy;

class Lobby {

    /**
     * Opens the [Lobby] and shows the corresponding view.
     */
    open() {
        new LobbyView(this);
    }
}