/*
 * @Copyright (c) Huawei Technologies Co., Ltd. 2024-2024. All rights reserved.
 */

package easingfunctions4cj

import std.math.sqrt

public class CircEaseIn <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        var tempt = t
        (tempt /= d)
        return -c * (sqrt(1.0 - tempt * tempt) - 1.0) + b
    }
}
