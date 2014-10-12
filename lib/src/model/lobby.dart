part of dartlomacy;

class Lobby {

    static Logger logger = new Logger("Lobby");

    /**
     * Opens a new [Lobby] to wait for players to join.
     */
    open() {
        logger.info("Opening lobby");
    }

    String toString() => "Lobby";
}