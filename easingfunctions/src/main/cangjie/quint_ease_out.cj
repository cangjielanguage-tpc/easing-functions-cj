/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions

public class QuintEaseOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32 {
        var tempt = t
        return c * ((match (0) {
            case _ =>
                tempt = tempt / d - 1.0
                tempt
        }) * tempt * tempt * tempt * tempt + 1.0) + b
    }
}
