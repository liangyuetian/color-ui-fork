Flutter中的手势系统分为二层：

* 第一层是触摸原事件（指针）
    * PointerDownEvent：用户与屏幕接触产生了联系
    * PointerMoveEvent：手指已从屏幕上的一个位置移动到另一个位置
    * PointMoveEvent：指针停止接触屏幕
    * PointerUpEvent：用户已停止接触屏幕
    * PointerCanceEvent：此指针的输入不再指向此应用程序

* 第二层是手势事件（轻击，拖动，缩放）
    * 自带交互的控件监听
        * RaisedButton、
        * IconButton、
        * OutlineButton、
        * Checkbox、
        * SnackBar、
        * Switch等　　　　
        * 用GestureDelector进行手势检测
        * 用Dismissible实现滑动删除　　　　


GestureDetector支持的手势

```dart
GestureDetector({
    Key key,
    this.child,
    this.onTapDown,//按下，每次和屏幕交互都会调用
    this.onTapUp,//抬起，停止触摸时调用
    this.onTap,//点击，短暂触摸屏幕时调用
    this.onTapCancel,//取消 触发了onTapDown，但没有完成onTap
    this.onDoubleTap,//双击，短时间内触摸屏幕两次
    this.onLongPress,//长按，触摸时间超过500ms触发
    this.onLongPressUp,//长按松开
    this.onVerticalDragDown,//触摸点开始和屏幕交互，同时竖直拖动按下
    this.onVerticalDragStart,//触摸点开始在竖直方向拖动开始
    this.onVerticalDragUpdate,//触摸点每次位置改变时，竖直拖动更新
    this.onVerticalDragEnd,//竖直拖动结束
    this.onVerticalDragCancel,//竖直拖动取消
    this.onHorizontalDragDown,//触摸点开始跟屏幕交互，并水平拖动
    this.onHorizontalDragStart,//水平拖动开始，触摸点开始在水平方向移动
    this.onHorizontalDragUpdate,//水平拖动更新，触摸点更新
    this.onHorizontalDragEnd,//水平拖动结束触发
    this.onHorizontalDragCancel,//水平拖动取消 onHorizontalDragDown没有成功触发
    //onPan可以取代onVerticalDrag或者onHorizontalDrag，三者不能并存
    this.onPanDown,//触摸点开始跟屏幕交互时触发
    this.onPanStart,//触摸点开始移动时触发
    this.onPanUpdate,//屏幕上的触摸点位置每次改变时，都会触发这个回调
    this.onPanEnd,//pan操作完成时触发
    this.onPanCancel,//pan操作取消
    //onScale可以取代onVerticalDrag或者onHorizontalDrag，三者不能并存，不能与onPan并存
    this.onScaleStart,//触摸点开始跟屏幕交互时触发，同时会建立一个焦点为1.0
    this.onScaleUpdate,//跟屏幕交互时触发，同时会标示一个新的焦点
    this.onScaleEnd,//触摸点不再跟屏幕交互，标示这个scale手势完成
    this.behavior,
    this.excludeFromSemantics = false
})
```