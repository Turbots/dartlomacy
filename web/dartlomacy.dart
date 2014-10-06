import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'package:polymer/polymer.dart';

/**
 * Main method.
 */
main() {
    // use polymer elements only when it is finished initializing.
    initPolymer().run(() {
        Polymer.onReady.then((_) {
            _createMaps();
        });
    });
}

/**
 * Private method that creates both maps.
 */
_createMaps() {
    // first map is regular map made from polymer element
    // it will be created when the page loads

    // second map is australia with fusion table styling
    final australia = new LatLng(-25, 133);
    final mapOptions = new MapOptions()
            ..center = australia
            ..zoom = 4;

    final map = new GMap(querySelector("#map2"), mapOptions);

    final layerQuery = new FusionTablesQuery()
            ..select = "geometry"
            ..from = "1ertEwm-1bMBhpEwHhtNYT47HQ9k2ki_6sRa-UQ";

    final style1 = new FusionTablesStyle();
    style1.polygonOptions = new FusionTablesPolygonOptions()
            ..fillColor = "#00FF00"
            ..fillOpacity = 0.3;

    final style2 = new FusionTablesStyle()..where = "birds > 300";
    style2.polygonOptions = new FusionTablesPolygonOptions()..fillColor = "#0000FF";

    final style3 = new FusionTablesStyle()..where = "population > 5";
    style3.polygonOptions = new FusionTablesPolygonOptions()..fillOpacity = 1.0;

    final layerOptions = new FusionTablesLayerOptions()
            ..query = layerQuery
            ..styles = [style1, style2, style3];

    final layer = new FusionTablesLayer(layerOptions);

    layer.map = map;
}
