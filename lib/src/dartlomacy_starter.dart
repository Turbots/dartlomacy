part of dartlomacy;

/**
 * Starts the application.
 */
start() {
    Logger.root.level = Level.FINEST;
    Logger.root.onRecord.listen((LogRecord r) {
        window.console.log('${r.time} - ${r.level} - ${r.loggerName} - ${r.message}');
    });
}
