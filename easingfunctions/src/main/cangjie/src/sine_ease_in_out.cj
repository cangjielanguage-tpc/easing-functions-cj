/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

import std.math.{cos, MathExtension}

public class SineEaseInOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        return -c / 2.0 * (Float64(cos(Float64.PI * Float64(t) / Float64(d))) - 1.0) + b
    }
}
