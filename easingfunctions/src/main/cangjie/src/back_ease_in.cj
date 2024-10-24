/*
 * @Copyright (c) Huawei Technologies Co., Ltd. 2024-2024. All rights reserved.
 */

package easingfunctions

public class BackEaseIn <: BaseEasingMethod {
    private var s: Float64 = 1.70158f64

    public init() {}

    public init(back: Float64) {
        s = back
    }

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        var tempt = t
        tempt /= d
        return c * tempt * tempt * ((s + 1.0) * tempt - s) + b
    }
}
