part of dartlomacy;

/**
 * Starts the dartlomacy application.
 */
start() {
    Logger.root.level = Level.FINEST;
    Logger.root.onRecord.listen((LogRecord r) {
      window.console.log('${r.loggerName}(${r.level}): ${r.message}');
    });

    new Lobby().open();
}