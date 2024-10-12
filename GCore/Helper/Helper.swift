public final class Helper {
    
    static public func object<T: Decodable>(from bundle: Bundle, json name: String) -> T? {
        guard let url = bundle.url(forResource: name, withExtension: .json) else { return nil } //
        
        let jsonData = try? Data(contentsOf: url)
        
        guard let jsonData else { return nil }
        
        let resultData = try? JSONDecoder().decode(T.self, from: jsonData)
        
        return resultData
    }
    
}
