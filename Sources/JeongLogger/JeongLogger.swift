import OSLog

open class JeongLogger {
    public static func log<T>(_ object: T?, level: OSLogType = .default) {
        let message = "\(String(describing: object))"
        os_log(level, "%@", message)
    }
    
    public static func error<T>(_ object: T?, level: OSLogType = .error) {
        let message = "\(String(describing: object))"
        os_log(level, "%@", message)
    }
}
