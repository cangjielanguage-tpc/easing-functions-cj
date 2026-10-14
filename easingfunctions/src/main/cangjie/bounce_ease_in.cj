/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

public class BounceEaseIn <: BaseEasingMethod {
    private var mBounceEaseOut: BounceEaseOut

    public init() {
        mBounceEaseOut = BounceEaseOut()
    }

    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32 {
        return c - mBounceEaseOut.calculate(d - t, 0.0, c, d) + b
    }
}
