

protocol CrashReporter {
    func log(message: String)
}


class CrashlyticsAdapter: CrashReporter {
    func log(message: String) {

    }
}


class SentryAdapter: CrashReporter {
    func log(message: String) {

    }
}

class CrashReportingService {
    private let reporter: CrashReporter
    
    init(reporter: CrashReporter) {
        self.reporter = reporter
    }
    
    func log(message: String) {
        reporter.log(message: message)
    }
}


let crashlyticsReporter = CrashlyticsAdapter()
let crashReportingService = CrashReportingService(reporter: crashlyticsReporter)

//crashReportingService.log(message: "HomeView loaded")


