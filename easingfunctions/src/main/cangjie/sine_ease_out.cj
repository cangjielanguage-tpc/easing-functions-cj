/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

import std.math.{sin, MathExtension}

public class SineEaseOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32 {
        return c * Float32(sin(Float32(t / d) * (Float32.GetPI() / 2.0))) + b
    }
}
