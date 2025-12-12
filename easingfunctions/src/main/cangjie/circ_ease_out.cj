/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

import std.math.sqrt

public class CircEaseOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32 {
        try {
            var tempt = t
            return c * sqrt(1.0 - (match (0) {
                case _ =>
                    tempt = tempt / d - 1.0
                    tempt
            }) * tempt) + b
        } catch (e: IllegalArgumentException) {
            return Float32.NaN
        }
    }
}
