/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

public class BackEaseInOut <: BaseEasingMethod {
    private var s = 1.70158f64

    public init() {}

    public init(back: Float64) {
        s = back
    }

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        var tempt = t
        (tempt /= d / 2.0)
        if (tempt < 1.0) {
            return c / 2.0 * (tempt * tempt * ((s + 1.0) * tempt - s)) + b
        }
        (tempt -= 2.0)
        (s *= (1.525f64))
        return c / 2.0 * (tempt * tempt * ((s + 1.0) * tempt + s) + 2.0) + b
    }
}
