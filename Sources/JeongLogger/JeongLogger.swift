import OSLog

open class JeongLogger {
    ///로그 출력
    ///- Parameters:
    ///     - object : 출력하고 싶은 객체(e.g. String)
    ///     - level : 로그 레벨(debug, info, default, error, fault)
    public static func log<T>(_ object: T?, level: OSLogType = .default) {
        guard let object = object else {
            os_log(level, "%@", "object is nil")
            return
        }
        
        let message = "\(String(describing: object))"
        os_log(level, "%@", message)
    }
    
    ///에러 로그 출력
    ///- Parameters:
    ///     - object : 출력하고 싶은 에러 객체
    ///     - level : 로그 레벨(debug, info, default, error, fault)
    public static func error<T>(_ object: T?, level: OSLogType = .error) {
        guard let object = object else {
            os_log(level, "%@", "object is nil")
            return
        }
        
        let message = "\(String(describing: object))"
        os_log(level, "%@", message)
    }
}
