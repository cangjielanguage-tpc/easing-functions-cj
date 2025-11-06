/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

import std.math.{pow, sin, MathExtension}

public class ElasticEaseIn <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
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
        (tempt -= 1.0)
        return -(a * Float64(pow(2.0, Float64(10.0 * tempt))) * sin((tempt * d - s) * (2.0 * Float64.GetPI()) / p)) + b
    }
}
