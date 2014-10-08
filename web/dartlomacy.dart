import 'package:dartlomacy/dartlomacy.dart' as dartlomacy show start;
import 'package:polymer/polymer.dart';

/**
 * Main method.
 */
main() {
    // use polymer elements only when it is finished initializing.
    initPolymer().run(() {
        Polymer.onReady.then((_) {
            dartlomacy.start();
        });
    });
}
