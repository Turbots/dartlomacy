import 'package:dartlomacy/dartlomacy_library.dart' as dartlomacy_library show start;
import 'package:polymer/polymer.dart';

/**
 * Starts the Dartlomacy web application.
 */
main() {
    // use polymer elements once it is finished initializing.
    initPolymer().run(() {
        Polymer.onReady.then((_) {
            dartlomacy_library.start();
        });
    });
}
