/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

import std.math.pow

public class ExpoEaseOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        return if (t == d) {
            b + c
        } else {
            c * (-Float64(pow(2.0, Float64(-10.0 * t / d))) + 1.0) + b
        }
    }
}
