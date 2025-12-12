/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

import std.math.pow

public class ExpoEaseIn <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32 {
        return if (t == 0.0) {
            b
        } else {
            c * Float32(pow(2.0, Float32(10.0 * (t / d - 1.0)))) + b
        }
    }
}
