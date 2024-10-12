import OSLog

let logger = Logger(subsystem: "GNetowrk", category: "HTTP")

public class GLogger {
    
    public static var loggerEnabled: Bool = true

    public static func log(_ request: URLRequest, _ response: HTTPURLResponse) {
        if loggerEnabled {
            logger.info(" <------ Http Request ------>\nurl: \(request.url?.absoluteString ?? "nil")\nmethod: \(request.httpMethod ?? "nil")\nheaders: \(request.allHTTPHeaderFields ?? [:])\nbody: \(request.httpBody ?? Data())\nstatusCode: \(response.statusCode)\n<------- End Request ------>\n\n")
        }
    }
        
    
    public static func log(_ error: Error) {
        if loggerEnabled {
            logger.error("Request failed with error: \(error.localizedDescription, privacy: .public)")
        }
    }
    
}
