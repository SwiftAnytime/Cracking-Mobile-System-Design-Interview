

protocol TravelStrategyProtocol {
    func travel(from start: String, to destination: String)
}

class CarTravel: TravelStrategyProtocol {
    func travel(from start: String, to destination: String) {
        print("Traveling by car from \(start) to \(destination).")
    }
}

class BusTravel: TravelStrategyProtocol {
    func travel(from start: String, to destination: String) {
        print("Traveling by bus from \(start) to \(destination).")
    }
}

class AirTravel: TravelStrategyProtocol {
    func travel(from start: String, to destination: String) {
        print("Traveling by airplane from \(start) to \(destination).")
    }
}

class TravelStrategy {
    private var strategy: TravelStrategyProtocol

    init(strategy: TravelStrategyProtocol) {
        self.strategy = strategy
    }

    func travel(from start: String, to destination: String) {
        strategy.travel(from: start, to: destination)
    }
}

//let carTravel = CarTravel()
//let travelStrategy = TravelStrategy(strategy: carTravel)
//travelStrategy.travel(from: "Utah", to: "New York")

let busTravel = BusTravel()
let travelStrategy = TravelStrategy(strategy: busTravel)
travelStrategy.travel(from: "Utah", to: "New York")


