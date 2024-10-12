public extension Optional where Wrapped: Collection {
    
    var orEmpty: [Wrapped.Element] {
        self as? [Wrapped.Element] ?? []
    }
    
}
