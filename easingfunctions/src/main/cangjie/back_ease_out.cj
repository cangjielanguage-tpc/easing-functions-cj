/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

public class BackEaseOut <: BaseEasingMethod {
    private var s = 1.70158f32

    public init() {}

    public init(back: Float32) {
        s = back
    }

    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32 {
        var tempt = t
        return c * ((match (0) {
            case _ =>
                tempt = tempt / d - 1.0
                tempt
        }) * tempt * ((s + 1.0) * tempt + s) + 1.0) + b
    }
}
