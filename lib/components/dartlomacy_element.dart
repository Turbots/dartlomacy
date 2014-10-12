library dartlomacy.core;

import 'package:polymer/polymer.dart';
import 'package:logging/logging.dart';

import 'package:dartlomacy/dartlomacy_library.dart';

@CustomTag("dartlomacy-element")
class DartlomacyElement extends PolymerElement with Observable {

    static Logger _logger = new Logger("DartlomacyElement");

    DartlomacyElement.created() : super.created() {
        Polymer.onReady.then((_) {
            LoggerConfig.initializeLogging();
            _logger.info("Starting dartlomacy app");
            _start();
        });
    }

    /**
     * Starts the Dartlomacy application.
     */
    _start() {

    }
}
