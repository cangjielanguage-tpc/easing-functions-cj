/*
 * @Copyright (c) Huawei Technologies Co., Ltd. 2024-2024. All rights reserved.
 */

package easingfunctions


public class Linear <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        return c * t / d + b
    }
}
