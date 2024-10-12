public protocol UserDefaultsProtocol {
    func set(_ value: Any?, forKey key: String)
    func object(forKey key: String) -> Any?
}


extension UserDefaults: UserDefaultsProtocol { }


