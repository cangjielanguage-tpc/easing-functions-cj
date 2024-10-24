/*
 * @Copyright (c) Huawei Technologies Co., Ltd. 2024-2024. All rights reserved.
 */

package easingfunctions

import std.math.pow

public class ExpoEaseInOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        var tempt = t
        if (tempt == 0.0) {
            return b
        }
        if (tempt == d) {
            return b + c
        }
        (tempt /= d / 2.0)
        if (tempt < 1.0) {
            return c / 2.0 * Float64(pow(2.0, Float64(10.0 * (tempt - 1.0)))) + b
        }
        return c / 2.0 * (-Float64(pow(2.0, Float64(-10.0 * match (0) {
            case _ =>
                tempt -= 1.0
                tempt
        }))) + 2.0) + b
    }
}
