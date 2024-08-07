import Foundation


class NetworkManager {
    func sendRequest(_ request: URLRequest, completion: (Data?, Error?) -> Void) {
        // Networking code
    }
}

class PaymentProcessor {
    func processPayment(amount: Double, completion: (Bool, Error?) -> Void) {
        // Payment processing code
    }
}

class SecurityManager {
    func encryptData(_ data: Data) -> Data {
        // Encryption code
    }

    func decryptData(_ data: Data) -> Data {
        // Decryption code
    }
}

class PaymentFacade {
    private let networkManager: NetworkManager
    private let paymentProcessor: PaymentProcessor
    private let securityManager: SecurityManager

    init(networkManager: NetworkManager, paymentProcessor: PaymentProcessor, securityManager: SecurityManager) {
        self.networkManager = networkManager
        self.paymentProcessor = paymentProcessor
        self.securityManager = securityManager
    }

    func makePayment(amount: Double, completion: @escaping (Bool, Error?) -> Void) {
        let paymentData = "Amount: \(amount)".data(using: .utf8)!
        let encryptedData = securityManager.encryptData(paymentData)

        let request = URLRequest(url: URL(string: "https://payment.example.com")!)
        networkManager.sendRequest(request) { data, error in
            if let error = error {
                completion(false, error)
                return
            }
            
            // Assuming response data contains necessary payment info
            if let data = data, let decryptedData = String(data: self.securityManager.decryptData(data), encoding: .utf8) {
                print("Decrypted Response: \(decryptedData)")
                self.paymentProcessor.processPayment(amount: amount, completion: completion)
            } else {
                completion(false, nil)
            }
        }
    }
}

let networkManager = NetworkManager()
let paymentProcessor = PaymentProcessor()
let securityManager = SecurityManager()

let paymentFacade = PaymentFacade(networkManager: networkManager, paymentProcessor: paymentProcessor, securityManager: securityManager)

paymentFacade.makePayment(amount: 100.0) { success, error in
    if success {
        print("Payment successful")
    } else {
        print("Payment failed with error: \(String(describing: error))")
    }
}

