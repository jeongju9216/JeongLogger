# JeongLogger
간단한 로깅 라이브러리

# 설치
Swift Package Manager(SPM)을 지원합니다.  
```
https://github.com/jeongju9216/JeongLogger.git
```
# 사용법
### 일반 로그
``` swift
static func log<T>(_ object: T?, level: OSLogType = .default)
```
(필수) object: String을 포함한 객체를 파라미터로 전달합니다.  
(선택) level: [OSLogType](https://developer.apple.com/documentation/os/oslogtype)

``` swift
let message = "Message"
JeongLogger.log(message)
JeongLogger.log(message, level: .default)
```

### 에러 로그
``` swift
static func error<T>(_ object: T?, level: OSLogType = .error)
```
(필수) object: String을 포함한 객체를 파라미터로 전달합니다.  
(선택) level: [OSLogType](https://developer.apple.com/documentation/os/oslogtype)

``` swift
do {
    ...
} catch {
    JeongLogger.error(error)
}
```
