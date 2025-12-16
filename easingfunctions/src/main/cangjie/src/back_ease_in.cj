/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

public class BackEaseIn <: BaseEasingMethod {
    private var s: Float32 = 1.70158f32

    public init() {}

    public init(back: Float32) {
        s = back
    }

    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32 {
        var tempt = t
        tempt /= d
        return c * tempt * tempt * ((s + 1.0) * tempt - s) + b
    }
}
