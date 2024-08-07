//
//
//protocol TravelStrategy {
//    func travel(from start: String, to destination: String)
//}
//
//class CarTravel: TravelStrategy {
//    func travel(from start: String, to destination: String) {
//        print("Traveling by car from \(start) to \(destination).")
//    }
//}
//
//class TrainTravel: TravelStrategy {
//    func travel(from start: String, to destination: String) {
//        print("Traveling by train from \(start) to \(destination).")
//    }
//}
//
//class AirTravel: TravelStrategy {
//    func travel(from start: String, to destination: String) {
//        print("Traveling by airplane from \(start) to \(destination).")
//    }
//}
//
//class TravelContext {
//    private var strategy: TravelStrategy
//    
//    init(strategy: TravelStrategy) {
//        self.strategy = strategy
//    }
//    
//    func setStrategy(_ strategy: TravelStrategy) {
//        self.strategy = strategy
//    }
//    
//    func travel(from start: String, to destination: String) {
//        strategy.travel(from: start, to: destination)
//    }
//}
//
//// Usage
//let travelContext = TravelContext(strategy: CarTravel())
//travelContext.travel(from: "New York", to: "Boston")
//
//travelContext.setStrategy(TrainTravel())
//travelContext.travel(from: "New York", to: "Boston")
//
//travelContext.setStrategy(AirTravel())
//travelContext.travel(from: "New York", to: "Boston")
