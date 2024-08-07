//
//
//class NetworkManager {
//    func sendRequest(_ request: URLRequest, completion: (Data?, Error?) -> Void) {
//        // Complex networking code
//    }
//}
//
//class PaymentProcessor {
//    func processPayment(amount: Double, completion: (Bool, Error?) -> Void) {
//        // Complex payment processing code
//    }
//}
//
//class SecurityManager {
//    func encryptData(_ data: Data) -> Data {
//        // Encryption code
//    }
//
//    func decryptData(_ data: Data) -> Data {
//        // Decryption code
//    }
//}
//
//class PaymentProcessFacade {
//    let networkManager: NetworkManager
//    let paymentProcessor: PaymentProcessor
//    let securityManager: SecurityManager
//    
//    init(networkManager: NetworkManager, paymentProcessor: PaymentProcessor, securityManager: SecurityManager) {
//        self.networkManager = networkManager
//        self.paymentProcessor = paymentProcessor
//        self.securityManager = securityManager
//    }
//    
//    func makePayment(amount: Int, completion: @escaping (Bool, Error?)->(Void)) {
//        //implemetion of payment process using all the sub-modules
//    }
//}
//
//let networkManager =  NetworkManager()
//let paymentProcessor = PaymentProcessor()
//let securityManager = SecurityManager()
//let payment = PaymentProcessFacade(networkManager: networkManager, paymentProcessor: paymentProcessor, securityManager: securityManager)
//
//payment.makePayment(amount: 2000) { status, error in
//    
//}
//
//
