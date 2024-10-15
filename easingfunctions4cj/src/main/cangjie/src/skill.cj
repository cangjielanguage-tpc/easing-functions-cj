/*
 * @Copyright (c) Huawei Technologies Co., Ltd. 2024-2024. All rights reserved.
 */

package easingfunctions4cj

public enum Skill <: ToString & Equatable<Skill> {
    | _BackEaseIn
    | _BackEaseOut
    | _BackEaseInOut
    | _BounceEaseIn
    | _BounceEaseOut
    | _BounceEaseInOut
    | _CircEaseIn
    | _CircEaseOut
    | _CircEaseInOut
    | _CubicEaseIn
    | _CubicEaseOut
    | _CubicEaseInOut
    | _ElasticEaseIn
    | _ElasticEaseOut
    | _ExpoEaseIn
    | _ExpoEaseOut
    | _ExpoEaseInOut
    | _QuadEaseIn
    | _QuadEaseOut
    | _QuadEaseInOut
    | _QuintEaseIn
    | _QuintEaseOut
    | _QuintEaseInOut
    | _SineEaseIn
    | _SineEaseOut
    | _SineEaseInOut
    | _Linear

    public func getMethod(): BaseEasingMethod {
        if (this == _BackEaseIn) {
            return BackEaseIn()
        }
        if (this == _BackEaseOut) {
            return BackEaseOut()
        }
        if (this == _BackEaseInOut) {
            return BackEaseInOut()
        }
        if (this == _BounceEaseIn) {
            return BounceEaseIn()
        }
        if (this == _BounceEaseOut) {
            return BounceEaseOut()
        }
        if (this == _BounceEaseInOut) {
            return BounceEaseInOut()
        }
        if (this == _CircEaseIn) {
            return CircEaseIn()
        }
        if (this == _CircEaseOut) {
            return CircEaseOut()
        }
        if (this == _CircEaseInOut) {
            return CircEaseInOut()
        }
        if (this == _CubicEaseIn) {
            return CubicEaseIn()
        }
        if (this == _CubicEaseOut) {
            return CubicEaseOut()
        }
        if (this == _CubicEaseInOut) {
            return CubicEaseInOut()
        }
        if (this == _ElasticEaseIn) {
            return ElasticEaseIn()
        }
        if (this == _ElasticEaseOut) {
            return ElasticEaseOut()
        }
        if (this == _ExpoEaseIn) {
            return ExpoEaseIn()
        }
        if (this == _ExpoEaseOut) {
            return ExpoEaseOut()
        }
        if (this == _ExpoEaseInOut) {
            return ExpoEaseInOut()
        }
        if (this == _QuadEaseIn) {
            return QuadEaseIn()
        }
        if (this == _QuadEaseOut) {
            return QuadEaseOut()
        }
        if (this == _QuadEaseInOut) {
            return QuadEaseInOut()
        }
        if (this == _QuintEaseIn) {
            return QuintEaseIn()
        }
        if (this == _QuintEaseOut) {
            return QuintEaseOut()
        }
        if (this == _QuintEaseInOut) {
            return QuintEaseInOut()
        }
        if (this == _SineEaseIn) {
            return SineEaseIn()
        }
        if (this == _SineEaseOut) {
            return SineEaseOut()
        }
        if (this == _SineEaseInOut) {
            return SineEaseInOut()
        }
        return Linear()
    }

    public func toString(): String {
        return match (this) {
            case _BackEaseIn => "BackEaseIn"
            case _BackEaseOut => "BackEaseOut"
            case _BackEaseInOut => "BackEaseInOut"
            case _BounceEaseIn => "BounceEaseIn"
            case _BounceEaseOut => "BounceEaseOut"
            case _BounceEaseInOut => "BounceEaseInOut"
            case _CircEaseIn => "CircEaseIn"
            case _CircEaseOut => "CircEaseOut"
            case _CircEaseInOut => "CircEaseInOut"
            case _CubicEaseIn => "CubicEaseIn"
            case _CubicEaseOut => "CubicEaseOut"
            case _CubicEaseInOut => "CubicEaseInOut"
            case _ElasticEaseIn => "ElasticEaseIn"
            case _ElasticEaseOut => "ElasticEaseOut"
            case _ExpoEaseIn => "ExpoEaseIn"
            case _ExpoEaseOut => "ExpoEaseOut"
            case _ExpoEaseInOut => "ExpoEaseInOut"
            case _QuadEaseIn => "QuadEaseIn"
            case _QuadEaseOut => "QuadEaseOut"
            case _QuadEaseInOut => "QuadEaseInOut"
            case _QuintEaseIn => "QuintEaseIn"
            case _QuintEaseOut => "QuintEaseOut"
            case _QuintEaseInOut => "QuintEaseInOut"
            case _SineEaseIn => "SineEaseIn"
            case _SineEaseOut => "SineEaseOut"
            case _SineEaseInOut => "SineEaseInOut"
            case _Linear => "Linear"
        }
    }

    public operator func ==(that: Skill): Bool {
        match ((this, that)) {
            case (_BackEaseIn, _BackEaseIn) => true
            case (_BackEaseOut, _BackEaseOut) => true
            case (_BackEaseInOut, _BackEaseInOut) => true
            case (_BounceEaseIn, _BounceEaseIn) => true
            case (_BounceEaseOut, _BounceEaseOut) => true
            case (_BounceEaseInOut, _BounceEaseInOut) => true
            case (_CircEaseIn, _CircEaseIn) => true
            case (_CircEaseOut, _CircEaseOut) => true
            case (_CircEaseInOut, _CircEaseInOut) => true
            case (_CubicEaseIn, _CubicEaseIn) => true
            case (_CubicEaseOut, _CubicEaseOut) => true
            case (_CubicEaseInOut, _CubicEaseInOut) => true
            case (_ElasticEaseIn, _ElasticEaseIn) => true
            case (_ElasticEaseOut, _ElasticEaseOut) => true
            case (_ExpoEaseIn, _ExpoEaseIn) => true
            case (_ExpoEaseOut, _ExpoEaseOut) => true
            case (_ExpoEaseInOut, _ExpoEaseInOut) => true
            case (_QuadEaseIn, _QuadEaseIn) => true
            case (_QuadEaseOut, _QuadEaseOut) => true
            case (_QuadEaseInOut, _QuadEaseInOut) => true
            case (_QuintEaseIn, _QuintEaseIn) => true
            case (_QuintEaseOut, _QuintEaseOut) => true
            case (_QuintEaseInOut, _QuintEaseInOut) => true
            case (_SineEaseIn, _SineEaseIn) => true
            case (_SineEaseOut, _SineEaseOut) => true
            case (_SineEaseInOut, _SineEaseInOut) => true
            case (_Linear, _Linear) => true
            case _ => false
        }
    }

    public operator func !=(that: Skill): Bool {
        return !(this == that)
    }
}
