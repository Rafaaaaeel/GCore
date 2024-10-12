public extension String {
    
    static var empty: String {
        return ""
    }
    
    static var json: String {
        return "json"
    }
    
    var endpointFormat: String {
        let pattern = "^(/[\\w-]+)+$"

        let predicate = NSPredicate(format: "SELF MATCHES %@", pattern)
        
        return predicate.evaluate(with: self) ? self :"/\(self)"
    }
    
}
