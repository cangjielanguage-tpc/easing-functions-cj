/*
 * @Copyright (c) Huawei Technologies Co., Ltd. 2024-2024. All rights reserved.
 */

package easingfunctions4cj

import std.math.{pow, sin, MathExtension}

public class ElasticEaseInOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        var tempt = t
        if (tempt == 0.0) {
            return b
        }
        (tempt /= d / 2.0)
        if (tempt == 2.0) {
            return b + c
        }
        let p = d * (0.3 * 1.5)
        let a = c
        let s = p / 4.0
        (tempt -= 1.0)
        if (tempt < 1.0) {
            return -0.5f64 * (a * Float64(pow(2.0, Float64(10.0 * tempt))) * sin((tempt * d - s) * (2.0 * Float64.PI) / p
            )) + b
        }
        (tempt -= 1.0)
        return a * Float64(pow(2.0, Float64(-10.0 * tempt))) * sin((tempt * d - s) * (2.0 * Float64.PI) / p) * 0.5 + c +
            b
    }
}
