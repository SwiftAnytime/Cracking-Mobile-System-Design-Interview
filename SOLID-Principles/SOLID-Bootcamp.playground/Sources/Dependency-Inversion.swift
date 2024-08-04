//
//// Protocol defining payment processing operations
//protocol PaymentGateway {
//    func processPayment(amount: Double, completion: @escaping (Result<String, Error>) -> Void)
//}
//
//// High-level module (PaymentManager) depends on abstraction (PaymentGateway)
//class PaymentManager {
//    private let paymentGateway: PaymentGateway
//    
//    init(paymentGateway: PaymentGateway) {
//        self.paymentGateway = paymentGateway
//    }
//    
//    func processPayment(amount: Double, completion: @escaping (Result<String, Error>) -> Void) {
//        paymentGateway.processPayment(amount: amount, completion: completion)
//    }
//}
//
//// A concrete implementation of PaymentGateway for Stripe
//class StripePaymentGateway: PaymentGateway {
//    func processPayment(amount: Double, completion: @escaping (Result<String, Error>) -> Void) {
//        // Simulate Stripe payment processing
//        print("Processing payment of \(amount) with Stripe")
//        completion(.success("Stripe: Payment successful"))
//    }
//}
//
//// A concrete implementation of PaymentGateway for PayPal
//class PayPalPaymentGateway: PaymentGateway {
//    func processPayment(amount: Double, completion: @escaping (Result<String, Error>) -> Void) {
//        // Simulate PayPal payment processing
//        print("Processing payment of \(amount) with PayPal")
//        completion(.success("PayPal: Payment successful"))
//    }
//}
//
//// Usage of Dependency Injection with StripePaymentGateway
//let stripeGateway = StripePaymentGateway()
//let paymentManagerWithStripe = PaymentManager(paymentGateway: stripeGateway)
//
//paymentManagerWithStripe.processPayment(amount: 100.0) { result in
//    switch result {
//    case .success(let message):
//        print(message)
//    case .failure(let error):
//        print("Payment failed: \(error)")
//    }
//}
//
//// Usage of Dependency Injection with PayPalPaymentGateway
//let paypalGateway = PayPalPaymentGateway()
//let paymentManagerWithPayPal = PaymentManager(paymentGateway: paypalGateway)
//
//paymentManagerWithPayPal.processPayment(amount: 200.0) { result in
//    switch result {
//    case .success(let message):
//        print(message)
//    case .failure(let error):
//        print("Payment failed: \(error)")
//    }
//}
