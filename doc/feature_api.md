# easing-functions-cj 特性文档

## 介绍

easing-functions-cj是一个动画效果库，该库的函数曲线可用于控制动画对象实现特定的运动轨迹。

## 1 easing-functions-cj

### 1.1 easing-functions-cj

#### 1.1.1 Class API Description

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
    | _ElasticEaseInOut
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
     * 对象判等
     * 
     * 参数 that - 被对比的对象
     * 返回值 Bool - 是否相等
     */
    public operator func ==(that: Skill): Bool
    
    /*
     * 对象判不等
     * 
     * 参数 that - 被对比的对象
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
     * 返回值 Float32 - 运算的插值
     */
    public func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class BackEaseIn <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()
    
    /*
     * 构造函数
     *
     * 参数 back - 插值曲线变化幅度
     */
    public init(back: Float32)

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class BackEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()
    
    /*
     * 构造函数
     *
     * 参数 back - 插值曲线变化幅度
     */
    public init(back: Float32)

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class BackEaseOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()
    
    /*
     * 构造函数
     *
     * 参数 back - 插值曲线变化幅度
     */
    public init(back: Float32)

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class BounceEaseIn <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class BounceEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class BounceEaseOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class CircEaseIn <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class CircEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class CircEaseOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class CubicEaseIn <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class CubicEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class CubicEaseOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class ElasticEaseIn <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class ElasticEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class ElasticEaseOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class ExpoEaseIn <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class ExpoEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class ExpoEaseOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class Linear <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class QuadEaseIn <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class QuadEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class QuadEaseOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class QuintEaseIn <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class QuintEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class QuintEaseOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class SineEaseIn <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class SineEaseInOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}

public class SineEaseOut <: BaseEasingMethod {
    /*
     * 默认构造函数
     */
    public init()

    /*
     * 动画插值计算
     * 
     * 参数 t - 动画当前进度值
     * 参数 b - 插值起始值
     * 参数 c - 插值结束值
     * 参数 d - 动画结束进度值
     * 返回值 Float32 - 运算的插值
     */
    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32
}
```