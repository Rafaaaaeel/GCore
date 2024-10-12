public protocol Module {    
    func run()
    func configure()
}

public extension Module {
    func run() {
        configure()
    }
}
