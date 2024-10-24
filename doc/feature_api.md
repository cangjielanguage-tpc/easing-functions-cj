# easingfunctions4cj 特性文档

## 介绍

easingfunctions4cj是一个动画效果库，该库的函数曲线可用于控制动画对象实现特定的运动轨迹。

## 1 easingfunctions4cj

### 1.1 easingfunctions4cj

#### 1.1.1 EntryOhos Class API Description

```cangjie
public enum Skill <: ToString & Equatable<Skill> {
    | _BackEaseIn
    | _BackEaseOut
    | _BackEaseInOut
    | _BounceEaseIn
    | _BounceEaseOut
    | _BounceEaseInOut
    | _CircEaseIn
    | _CircEaseOut
    | _CircEaseInOut
    | _CubicEaseIn
    | _CubicEaseOut
    | _CubicEaseInOut
    | _ElasticEaseIn
    | _ElasticEaseOut
    | _ExpoEaseIn
    | _ExpoEaseOut
    | _ExpoEaseInOut
    | _QuadEaseIn
    | _QuadEaseOut
    | _QuadEaseInOut
    | _QuintEaseIn
    | _QuintEaseOut
    | _QuintEaseInOut
    | _SineEaseIn
    | _SineEaseOut
    | _SineEaseInOut
    | _Linear
    
    /*
     * 获取对应动画插值曲线对象
     * 
     * 返回值 BaseEasingMethod - 插值曲线对象
     */
    public func getMethod(): BaseEasingMethod
    
    /*
     * 转换字符串
     * 
     * 返回值 String - 字符串
     */
    public func toString(): String
    
    /*
     * 枚举判等
     * 
     * 参数 that - 被对比的枚举值
     * 返回值 Bool - 是否相等
     */
    public operator func ==(that: Skill): Bool
    
    /*
     * 枚举判不等
     * 
     * 参数 that - 被对比的枚举值
     * 返回值 Bool - 是否不等
     */
    public operator func !=(that: Skill): Bool
}

public interface BaseEasingMethod {
    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class BackEaseIn <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()
    
    /*
     * 构造
     *
     * 参数 back - 插值曲线变化幅度
     */
    public init(back: Float64)

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class BackEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()
    
    /*
     * 构造
     *
     * 参数 back - 插值曲线变化幅度
     */
    public init(back: Float64)

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class BackEaseOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()
    
    /*
     * 构造
     *
     * 参数 back - 插值曲线变化幅度
     */
    public init(back: Float64)

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class BounceEaseIn <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class BounceEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class BounceEaseOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class CircEaseIn <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class CircEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class CircEaseOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class CubicEaseIn <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class CubicEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class CubicEaseOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class ElasticEaseIn <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class ElasticEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class ElasticEaseOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class ExpoEaseIn <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class ExpoEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class ExpoEaseOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class Linear <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class QuadEaseIn <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class QuadEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class QuadEaseOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class QuintEaseIn <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class QuintEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class QuintEaseOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class SineEaseIn <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class SineEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}

public class SineEaseOut <: BaseEasingMethod {
    /*
     * 默认构造
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float64 - 运算的插值
     */
    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64
}
```