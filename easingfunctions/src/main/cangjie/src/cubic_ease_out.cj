/*
 * @Copyright (c) Huawei Technologies Co., Ltd. 2024-2024. All rights reserved.
 */

package easingfunctions

public class CubicEaseOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        var tempt = t
        return c * ((match (0) {
            case _ =>
                tempt = tempt / d - 1.0
                tempt
        }) * tempt * tempt + 1.0) + b
    }
}
