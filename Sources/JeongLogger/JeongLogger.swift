import OSLog

open class JeongLogger {
    public static func log<T>(_ object: T?, level: OSLogType = .default) {
        guard let object = object else {
            os_log(level, "%@", "object is nil")
            return
        }
        
        let message = "\(String(describing: object))"
        os_log(level, "%@", message)
    }
    
    public static func error<T>(_ object: T?, level: OSLogType = .error) {
        guard let object = object else {
            os_log(level, "%@", "object is nil")
            return
        }
        
        let message = "\(String(describing: object))"
        os_log(level, "%@", message)
    }
}
