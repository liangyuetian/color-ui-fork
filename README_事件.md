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


    GestureDetector 