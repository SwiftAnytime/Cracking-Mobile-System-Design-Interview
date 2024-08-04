
enum Event {
    case viewLoaded
    case buttonClicked
    case toggle
    case openMenu
}

protocol AnalyticsService {
    func logEvent(event: Event)
}

// Firebase Analytics Service
class FirebaseAnalytics: AnalyticsService {
    func logEvent(event: Event) {
        
    }
}

// CeleverTap Analytics Service
class CleverTapAnalytics: AnalyticsService {
    func logEvent(event: Event) {
        
    }
}

//What if you want to add one more Analytics Service?


// Logger class
final class Logger {
    
    static let sharedInstance = Logger()
    
    private init() {}
    
    func log(service: AnalyticsService, event: Event) {
        service.logEvent(event: event)
    }
}


//enum Event {
//    case viewLoaded
//    case buttonClicked
//    case toggle
//    case openMenu
//}
//
//protocol AnayticsService {
//    func logEvent(event: Event)
//}
//
//class FirebaseAnalytics: AnayticsService {
//    func logEvent(event: Event) {
//        
//    }
//}
//
//class CleverTapAnalytics: AnayticsService {
//    func logEvent(event: Event) {
//        
//    }
//}
//
//class MixPanelAnalytics: AnayticsService {
//    func logEvent(event: Event) {
//        
//    }
//}
//
//class MXAnaytics: AnayticsService {
//    func logEvent(event: Event) {
//        
//    }
//}
//
//final class Logger {
//    
//    static let sharedInstance = Logger()
//    
//    private init() {}
//    
//    func log(service: AnayticsService, event: Event) {
//        service.logEvent(event: event)
//    }
//}
//
//let logger = Logger.sharedInstance
//logger.log(service: FirebaseAnalytics(), event: .buttonClicked)



