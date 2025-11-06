/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

import std.math.{sin, MathExtension}

public class SineEaseOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        return c * Float64(sin(Float64(t / d) * (Float64.PI / 2.0))) + b
    }
}
