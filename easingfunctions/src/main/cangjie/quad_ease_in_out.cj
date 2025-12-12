/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2024-2025. All rights reserved.
 */
package easingfunctions


public class QuadEaseInOut <: BaseEasingMethod {
    public init() {}

    public override func calculate(t: Float32, b: Float32, c: Float32, d: Float32): Float32 {
        var tempt = t
        (tempt /= d / 2.0)
        if (tempt < 1.0) {
            return c / 2.0 * tempt * tempt + b
        }
        return -c / 2.0 * ((match (0) { case _ => tempt -= 1.0; tempt }) * (tempt - 2.0) - 1.0) + b
    }
}
