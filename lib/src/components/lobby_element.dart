library dartlomacy.lobby;

import 'package:logging/logging.dart';
import 'package:polymer/polymer.dart';
import 'package:dartlomacy/dartlomacy_library.dart';

@CustomTag("lobby-element")
class LobbyElement extends PolymerElement {

    static Logger _logger = new Logger("LobbyElement");

    Lobby _lobby;

    @observable get lobby => _lobby;

    @observable set lobby(final Lobby lobby) {
        _logger.info("Setting lobby $lobby");
        this._lobby = lobby;
    }

    LobbyElement.created() : super.created();

}