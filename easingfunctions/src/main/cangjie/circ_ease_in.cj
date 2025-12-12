/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

import std.math.sqrt

public class CircEaseIn <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        try {
            var tempt = t
            (tempt /= d)
            return -c * (sqrt(1.0 - tempt * tempt) - 1.0) + b
        } catch (e: IllegalArgumentException) {
            return Float64.NaN
        }
    }
}
