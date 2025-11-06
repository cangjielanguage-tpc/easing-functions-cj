/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

import std.math.{cos, MathExtension}

public class SineEaseIn <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        return -c * Float64(cos(Float64(t / d) * (Float64.PI / 2.0))) + c + b
    }
}
