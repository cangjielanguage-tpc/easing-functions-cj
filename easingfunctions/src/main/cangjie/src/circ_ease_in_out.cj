/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

import std.math.sqrt
import std.math.MathExtension

public class CircEaseInOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32 {
        try {
            var tempt = t
            (tempt /= d / 2.0)
            if ( tempt < 1.0) {
                return -c / 2.0 * (sqrt(1.0 - tempt * tempt) - 1.0) + b
            }
            (tempt -= 2.0)
            return c / 2.0 * (sqrt(1.0 - tempt * tempt) + 1.0) + b
        } catch (e: IllegalArgumentException) {
            return Float32.NaN
        }
    }
}

