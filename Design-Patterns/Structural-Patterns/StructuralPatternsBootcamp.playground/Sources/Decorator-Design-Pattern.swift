

protocol NetworkRequestDecorator: NetworkRequest {
    var wrapped: NetworkRequest { get }
}

import Foundation

class LoggingDecorator: NetworkRequestDecorator {
    var wrapped: NetworkRequest
    
    init(wrapped: NetworkRequest) {
        self.wrapped = wrapped
    }
    
    func execute(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        print("Starting request to URL: \(url)")
        let startTime = Date()
        wrapped.execute(url: url) { data, response, error in
            let endTime = Date()
            print("Completed request to URL: \(url) in \(endTime.timeIntervalSince(startTime)) seconds")
            completion(data, response, error)
        }
    }
}

import Foundation

class CachingDecorator: NetworkRequestDecorator {
    var wrapped: NetworkRequest
    private var cache: [URL: Data] = [:]
    
    init(wrapped: NetworkRequest) {
        self.wrapped = wrapped
    }
    
    func execute(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        if let cachedData = cache[url] {
            print("Returning cached data for URL: \(url)")
            completion(cachedData, nil, nil)
        } else {
            wrapped.execute(url: url) { data, response, error in
                if let data = data {
                    self.cache[url] = data
                }
                completion(data, response, error)
            }
        }
    }
}

let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1")!

// Basic network request
let basicRequest = BasicNetworkRequest()

// Enhanced with logging
let loggingRequest = LoggingDecorator(wrapped: basicRequest)

// Enhanced with caching
let cachingRequest = CachingDecorator(wrapped: loggingRequest)

