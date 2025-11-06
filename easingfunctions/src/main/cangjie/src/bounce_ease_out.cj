/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

public class BounceEaseOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        var tempt = t
        (tempt /= d)
        if (tempt < (1.0 / 2.75)) {
            return c * (7.5625 * tempt * tempt) + b
        } else if (tempt < (2.0 / 2.75)) {
            (tempt -= (1.5 / 2.75))
            return c * (7.5625 * tempt * tempt + 0.75) + b
        } else if (Float64(tempt) < (2.5 / 2.75)) {
            (tempt -= (2.25 / 2.75))
            return c * (7.5625 * tempt * tempt + 0.9375) + b
        } else {
            (tempt -= (2.625 / 2.75))
            return c * (7.5625 * tempt * tempt + 0.984375) + b
        }
    }
}
