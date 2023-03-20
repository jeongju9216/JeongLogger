import OSLog

open class JeongLogger {
    open static func log<T>(_ object: T?, level: OSLogType = .default) {
        let message = "\(String(describing: object))"
        os_log(level, "%@", message)
    }
    
    open static func error<T>(_ object: T?, level: OSLogType = .error) {
        let message = "\(String(describing: object))"
        os_log(level, "%@", message)
    }
}
