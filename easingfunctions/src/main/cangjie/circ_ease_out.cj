/*
 * @Copyright (c) Huawei Technologies Co., Ltd. 2024-2024. All rights reserved.
 */

package easingfunctions

import std.math.sqrt
import std.math.MathExtension

public class CircEaseOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        try {
            var tempt = t
            return c * sqrt(1.0 - (match (0) {
                case _ =>
                    tempt = tempt / d - 1.0
                    tempt
            }) * tempt) + b
        } catch (e: IllegalArgumentException) {
            return Float64.NaN
        }
    }
}
