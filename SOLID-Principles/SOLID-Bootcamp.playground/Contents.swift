

protocol PaymentGateway {
    func processPayment(amount: Double, completion: @escaping (Result<String, Error>) -> Void)
}

// High-level module (PaymentManager) depends on abstraction (PaymentGateway)
class PaymentManager {
    private let paymentGateway: PaymentGateway
    
    init(paymentGateway: PaymentGateway) {
        self.paymentGateway = paymentGateway
    }
    
    func processPayment(amount: Double, completion: @escaping (Result<String, Error>) -> Void) {
        paymentGateway.processPayment(amount: amount, completion: completion)
    }
}

// A concrete implementation for Stripe
class StripePaymentGateway: PaymentGateway {
    func processPayment(amount: Double, completion: @escaping (Result<String, Error>) -> Void) {
        // Simulate Stripe payment processing
        print("Processing payment of \(amount) with Stripe")
        completion(.success("Stripe: Payment successful"))
    }
}

// A concrete implementation for Stripe
class PaypalPaymentGateway: PaymentGateway {
    func processPayment(amount: Double, completion: @escaping (Result<String, Error>) -> Void) {
        // Simulate Stripe payment processing
        print("Processing payment of \(amount) with Stripe")
        completion(.success("Stripe: Payment successful"))
    }
}

let stripePaymentGateway = StripePaymentGateway()
let paypalPaymentGateway = PaypalPaymentGateway()
let paymentManager = PaymentManager(paymentGateway: paypalPaymentGateway)

paymentManager.processPayment(amount: 100000) { result in
    switch result {
    case .success(let message):
        print(message)
        
    case .failure(let error):
        print(error)
    }
}
