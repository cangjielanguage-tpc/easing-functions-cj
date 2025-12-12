/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

import std.math.{pow, sin, MathExtension}

public class ElasticEaseOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32 {
        var tempt = t
        if (tempt == 0.0) {
            return b
        }
        (tempt /= d)
        if (tempt == 1.0) {
            return b + c
        }
        let p = d * 0.3
        let a = c
        let s = p / 4.0
        return (a * Float32(pow(2.0, Float32(-10.0 * tempt))) * sin((tempt * d - s) * (2.0 * Float32.PI) / p) + c + b)
    }
}
