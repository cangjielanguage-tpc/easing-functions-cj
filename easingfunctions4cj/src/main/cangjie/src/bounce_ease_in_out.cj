/*
 * @Copyright (c) Huawei Technologies Co., Ltd. 2024-2024. All rights reserved.
 */

package easingfunctions4cj

public class BounceEaseInOut <: BaseEasingMethod {
    private var mBounceEaseOut: BounceEaseOut

    private var mBounceEaseIn: BounceEaseIn

    public init() {
        mBounceEaseIn = BounceEaseIn()
        mBounceEaseOut = BounceEaseOut()
    }

    public override func calculate(t: Float64, b: Float64, c: Float64, d: Float64): Float64 {
        if (t < d / 2.0) {
            return mBounceEaseIn.calculate(t * 2.0, 0.0, c, d) * 0.5 + b
        } else {
            return mBounceEaseOut.calculate(t * 2.0 - d, 0.0, c, d) * 0.5 + c * 0.5 + b
        }
    }
}
