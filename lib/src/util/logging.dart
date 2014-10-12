part of dartlomacy;

class LoggerConfig {

    static initializeLogging() {
        Logger.root.level = Level.ALL;
        Logger.root.onRecord.listen((LogRecord rec) {
            print('${rec.time} - ${rec.level.name} - ${rec.loggerName} - ${rec.message}');
        });
    }
}
