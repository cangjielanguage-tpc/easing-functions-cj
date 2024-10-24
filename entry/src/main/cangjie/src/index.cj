package ohos_app_cangjie_entry

internal import ohos.hilog.*
internal import ohos.base.LengthProp
internal import ohos.component.Column
internal import ohos.component.Row
internal import ohos.component.Button
internal import ohos.component.Text
internal import ohos.component.CustomView
internal import ohos.component.CJEntry
internal import ohos.component.loadNativeView
internal import ohos.state_manage.SubscriberManager
internal import ohos.state_manage.ObservedProperty
internal import ohos.state_manage.LocalStorage
import ohos.state_macro_manage.Entry
import ohos.state_macro_manage.Component
import ohos.state_macro_manage.State
import ohos.state_macro_manage.r
import ohos.base.*
import ohos.component.*
import ohos.animator.*
import ohos.state_manage.*
import ohos.state_macro_manage.*
import easingfunctions.*

class LineToParams {
    public var x: Float64
    public var y: Float64
    init(x: Float64, y: Float64) {
        this.x = x
        this.y = y
    }
}

@Entry
@Component
class MyView {
    private var settings: RenderingContextSettings = RenderingContextSettings(antialias: true);
    private var context: CanvasRenderingContext2D = CanvasRenderingContext2D(this.settings);

    var backAnimator: ?AnimatorResult = None
    var flag = false
    @State
    var wid = 100.0
    @State
    var hei = 100.0

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
    var isPlaying = false;

    var lineToParams: LineToParams = LineToParams(20.0, 20.0)

    var beginPoint: LineToParams = LineToParams(20.0, 170.0)
    var endPoint: LineToParams = LineToParams(350.0, 0.0)

    func onAnimateUpdate() {
        if (this.lineToParams.x == this.beginPoint.x) {
            return;
        }
        this.context.lineTo(
            this.lineToParams.x,
            this.lineToParams.y,
        );
        this.context.stroke();
    }

    func createAnimation(skill: Skill) {
        this.animator.onframe = {
            value: Float64 =>
            var xDistance = this.endPoint.x - this.beginPoint.x;
            var yDistance = this.endPoint.y - this.beginPoint.y;
            this.lineToParams.x = this.beginPoint.x + value * xDistance
            var f: Float64 = value;
            var f2: Float64 = skill.getMethod().calculate(value, 0.0, 120.0, 1.0);
            this.lineToParams.y = 170.0 - f2
            Hilog.info(0x0000, "v1", "liney = ${this.lineToParams.y}")
            this.onAnimateUpdate();
        }
        this.animator.onfinish = {
            => this.isPlaying = false
        }
    }

    func drawAnimationPath() {
        this.context.clearRect(0, 0, 600, 600);
        this.context.beginPath();
        this.context.moveTo(this.beginPoint.x, this.beginPoint.y);
        this.isPlaying = true
        this.animator.play();
    }

    let arr = [Skill._BackEaseIn, Skill._BackEaseOut, Skill._BackEaseInOut, Skill._BounceEaseIn, Skill._BounceEaseOut,
        Skill._BounceEaseInOut, Skill._CircEaseIn, Skill._CircEaseOut, Skill._CircEaseInOut, Skill._CubicEaseIn,
        Skill._CubicEaseOut, Skill._CubicEaseInOut, Skill._ElasticEaseIn, Skill._ElasticEaseOut, Skill._ExpoEaseIn,
        Skill._ExpoEaseOut, Skill._ExpoEaseInOut, Skill._QuadEaseIn, Skill._QuadEaseOut, Skill._QuadEaseInOut,
        Skill._QuintEaseIn, Skill._QuintEaseOut, Skill._QuintEaseInOut, Skill._SineEaseIn, Skill._SineEaseOut,
        Skill._SineEaseInOut, Skill._Linear]

    func build() {
        Column {
            Flex(
                FlexParams(direction: FlexDirection.Column, alignItems: ItemAlign.Center,
                justifyContent: FlexAlign.Center)) {
                Canvas(this.context).width(100.percent).height(70.percent).backgroundColor(0xfff000).onReady({
                    => ()
                })
            }.width(100.percent).height(50.percent)

            Stack(Alignment.TopStart) {
                Column() {
                    List(space: 20, initialIndex: 0) {
                        ForEach(
                            this.arr,
                            itemGeneratorFunc: {
                                item: Skill, _: Int64 => ListItem() {
                                    Button("${item.toString()}").fontSize(30).fontColor(Color.BLACK).onClick {
                                        if (this.isPlaying) {
                                            return;
                                        }
                                        this.createAnimation(item);
                                        this.drawAnimationPath();
                                    }
                                }
                            }
                        )
                    }.id("list").listDirection(Axis.Vertical) // 排列方向
                        .scrollBar(BarState.Off).divider(strokeWidth: 2.px,
                        color: Color(0xFFFFFF), startMargin: 20.px, endMargin: 20.px) // 每行之间的分界线
                            .edgeEffect(EdgeEffect.Spring) // 边缘效果设置为Spring
                            .
                        onScrollIndex(
                        {
                            firstIndex: Int32, lastIndex: Int32 =>
                            BaseLog.info("first" + firstIndex.toString())
                            BaseLog.info("last" + lastIndex.toString())
                        }
                    ).width(90.percent)
                }.width(100.percent).height(50.percent).backgroundColor(0xFFFFFF).padding(top: 5.px)
            }
        }
    }
}
