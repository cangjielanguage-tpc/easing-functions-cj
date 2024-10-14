/*
 * @Copyright (c) Huawei Technologies Co., Ltd. 2024-2024. All rights reserved.
 */

package easingfunctions4cj

public class QuintEaseInOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        var tempt = t
        (tempt /= d / 2.0)
        if (tempt < 1.0) {
            return c / 2.0 * tempt * tempt * tempt * tempt * tempt + b
        }
        (tempt -= 2.0)
        return c / 2.0 * (tempt * tempt * tempt * tempt * tempt + 2.0) + b
    }
}
