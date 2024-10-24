/*
 * @Copyright (c) Huawei Technologies Co., Ltd. 2024-2024. All rights reserved.
 */

package easingfunctions

public class BackEaseOut <: BaseEasingMethod {
    private var s = 1.70158f64

    public init() {}

    public init(back: Float64) {
        s = back
    }

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        var tempt = t
        return c * ((match (0) {
            case _ =>
                tempt = tempt / d - 1.0
                tempt
        }) * tempt * ((s + 1.0) * tempt + s) + 1.0) + b
    }
}
