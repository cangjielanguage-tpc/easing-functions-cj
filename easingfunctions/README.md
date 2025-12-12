<div align="center">
<h1>easing-functions-cj</h1>
</div>

<p align="center">
<img alt="" src="https://img.shields.io/badge/release-v1.0.1-brightgreen" style="display: inline-block;" />
<img alt="" src="https://img.shields.io/badge/build-pass-brightgreen" style="display: inline-block;" />
<img alt="" src="https://img.shields.io/badge/cjc-v1.0.3-brightgreen" style="display: inline-block;" />
<img alt="" src="https://img.shields.io/badge/cjcov-94.3%25-brightgreen" style="display: inline-block;" />
<img alt="" src="https://img.shields.io/badge/project-open-brightgreen" style="display: inline-block;" />
</p>

## 介绍

easing-functions-cj是一个动画效果库，该库的函数曲线可用于控制动画对象实现特定的运动轨迹。

### 特性

1. 支持多种动画效果,支持以下动画效果
   | BackEaseIn
   | BackEaseOut
   | BackEaseInOut
   | BounceEaseIn
   | BounceEaseOut
   | BounceEaseInOut
   | CircEaseIn
   | CircEaseOut
   | CircEaseInOut
   | CubicEaseIn
   | CubicEaseOut
   | CubicEaseInOut
   | ElasticEaseIn
   | ElasticEaseOut
   | ElasticEaseInOut
   | ExpoEaseIn
   | ExpoEaseOut
   | ExpoEaseInOut
   | QuadEaseIn
   | QuadEaseOut
   | QuadEaseInOut
   | QuintEaseIn
   | QuintEaseOut
   | QuintEaseInOut
   | SineEaseIn
   | SineEaseOut
   | SineEaseInOut
   | Linear

### 源码目录

```shell
├─doc                     # 文档目录
├─entry                   # 示例代码文件夹
├─easingfunctions         # easing-functions-cj 库源码目录
│  └─src/main/cangjie     # 框架代码目录
└──README.md              # 介绍及使用说明
```

### 接口说明

主要类和函数接口说明详见 [API](https://gitcode.com/Cangjie-TPC/easing-functions-cj/blob/easing-functions-cj_cangjie_plugin-5.1.1.840/doc/feature_api.md)

## 使用说明

### 编译构建

1. 通过module引入
    1. 克隆下载项目
    2. 将easingfunctions模块拷贝到应用项目下
    3. 在自身应用根目录build-profile.json5的"modules"中添加
       ```json
       {
         "name": "easingfunctions",
         "srcPath": "./easingfunctions"
       }
       ```
    4. 修改自身应用 entry 下的 oh-package.json5 文件，在 dependencies 字段添加 "@cangjie-tpc/easingfunctions": "file:../easingfunctions"，点击右上角“Sync Now”
       ```json
       {
          "name": "entry",
          "version": "1.0.0",
          "description": "Please describe the basic information.",
          "main": "",
          "author": "",
          "license": "",
         "dependencies": {
             "@cangjie-tpc/easingfunctions": "file:../easingfunctions"
         }
       }
       ```
    5. 在项目中使用 import easingfunctions.* 引用easingfunctions项目
       ```cangjie
       import easingfunctions.*
       ```
2. 把 easingfunctions 作为三方库依赖引入
    1. 目标工程把 easingfunctions 依赖库作为 git submodule 引入
       ```
       > cd $工程根目录
       > mkdir third-party
       > cd third-party
       > git submodule add "https://gitcode.com/Cangjie-TPC/easing-functions-cj.git"
       ```
    2. 修改自身应用 entry/src/main/cangjie 下的 cjpm.toml 文件，添加依赖
       ```toml
       [dependencies.easingfunctions]
         path = "../../../../third-party/easing-functions-cj/easingfunctions/src/main/cangjie"
       ```
    3. 在项目中使用 easingfunctions 组件
       ```cangjie
       import easingfunctions.*
       ```

### 功能示例

```cangjie
// 第一步：创建自己需要的动画
var animator: AnimatorResult = AnimatorResult(
    AnimatorOptions(
        duration: 1000,
        easing: "linear",
        delay: 0,
        fill: AnimatorFill.None,
        direction: AnimatorDirection.Normal,
        iterations: 1,
        begin: 0.0,
        end: 1.0
    )
)

// 第二步，实现onframe方法，并调用函数方法进行计算
this.animator.onframe = {
    value: Float64 =>
    var xDistance = this.endPoint.x - this.beginPoint.x
    var yDistance = this.endPoint.y - this.beginPoint.y
    this.lineToParams.x = this.beginPoint.x + value * xDistance
    var f: Float32 = skill.getMethod().calculate(Float32(value), 0.0, 120.0, 1.0)
    this.lineToParams.y = Float64(170.0 - f)
    Hilog.info(0x0000, "v1", "liney = ${this.lineToParams.y}")
    this.onAnimateUpdate()
}
// 详细使用示例请参考entry应用
```

<p align="left">
<img src="https://raw.gitcode.com/Cangjie-TPC/easing-functions-cj/blobs/610a751f64b5b544632c15c4da95ddfb40aaa972/sample.png" width="30%" >
</p>

## 约束与限制

在下述版本验证通过：

    DevEco Studio 5.1.1 Release(5.1.1.840) 

## 开源协议

本项目基于 [MIT License](./LICENSE) ，请自由的享受和参与开源。

## 参与贡献

欢迎给我们提交PR，欢迎给我们提交Issue，欢迎参与任何形式的贡献。