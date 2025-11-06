/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

public class BounceEaseIn <: BaseEasingMethod {
    private var mBounceEaseOut: BounceEaseOut

    public init() {
        mBounceEaseOut = BounceEaseOut()
    }

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        return c - mBounceEaseOut.calculate(d - t, 0.0, c, d) + b
    }
}
