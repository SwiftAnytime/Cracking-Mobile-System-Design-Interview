
protocol RemoteStorage {
    func storeOrder(id: String)
    
    func deleteForUser(id: String)

}

protocol LocalStorage {
    
    func fetchValue(key: String)
    
    func storeValue(key: String)
    
    func deleteValue(key: String)
    
}

class FirebaseDatabase: RemoteStorage {
    func storeOrder(id: String) {
        
    }
    
    func deleteForUser(id: String) {
        
    }
    
}
