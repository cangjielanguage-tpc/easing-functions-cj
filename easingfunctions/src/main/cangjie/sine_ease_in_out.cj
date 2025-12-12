/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

import std.math.{cos, MathExtension}

public class SineEaseInOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32 {
        return -c / 2.0 * (Float32(cos(Float32.GetPI() * Float32(t) / Float32(d))) - 1.0) + b
    }
}
