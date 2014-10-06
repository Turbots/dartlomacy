import 'package:polymer/polymer.dart';
import 'package:google_maps/google_maps.dart';

@CustomTag("polymer-map")
class PolymerMap extends PolymerElement {

    MapOptions _options;
    GMap _map;

    PolymerMap.created() : super.created() {
        _options = new MapOptions()
                ..zoom = 8
                ..center = new LatLng(-34.397, 150.644)
                ..mapTypeId = MapTypeId.ROADMAP;

        _map = new GMap(this.$["${id}"], _options);
    }
}
