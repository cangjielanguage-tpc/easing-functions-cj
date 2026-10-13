/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

import std.math.pow

public class ExpoEaseInOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32 {
        var tempt = t
        if (tempt == 0.0) {
            return b
        }
        if (tempt == d) {
            return b + c
        }
        (tempt /= d / 2.0)
        if (tempt < 1.0) {
            return c / 2.0 * Float32(pow(2.0, Float32(10.0 * (tempt - 1.0)))) + b
        }
        return c / 2.0 * (-Float32(pow(2.0, Float32(-10.0 * match (0) {
            case _ =>
                tempt -= 1.0
                tempt
        }))) + 2.0) + b
    }
}
