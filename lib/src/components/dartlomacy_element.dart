library dartlomacy.core;

import 'package:polymer/polymer.dart';
import 'package:logging/logging.dart';
import 'package:dartlomacy/dartlomacy_library.dart';

import 'lobby_element.dart';
import 'game_element.dart';

@CustomTag("dartlomacy-element")
class DartlomacyElement extends PolymerElement {

    static Logger logger = new Logger("DartlomacyElement");

    DartlomacyElement.created() : super.created() {
        logger.info("DartlomacyElement created!");

        LobbyElement lobbyElement = $["lobby"] as LobbyElement;
        GameElement gameElement = $["game"] as GameElement;

        Lobby lobby = new Lobby();
        lobby.open();
        lobbyElement.lobby = lobby;
    }
}