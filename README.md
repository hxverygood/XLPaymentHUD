针对fork项目进行了修改，增加了“失败”时的动画。
非常感谢原作者能给出这个控件，当然其中的问题是效果实现分散在3个类中，个人感觉这样有点繁琐，而且调用起来比较麻烦。
等有时间在对该控件进行修改。
非常感谢！

---
# XLPaymentHUD
iOS 支付宝支付动画

### 显示效果
<img src="https://github.com/mengxianliang/XLPaymentHUD/blob/master/GIF/1.gif" width=300 height=538 />
### 
### 使用方法

* 显示/隐藏 付款中动画
```objc
[XLPaymentLoadingHUD showIn:self.view];
[XLPaymentLoadingHUD hideIn:self.view];
```
* 显示/隐藏 付款完成动画
```objc
[XLPaymentSuccessHUD showIn:self.view];
[XLPaymentSuccessHUD hideIn:self.view];
```

### [支付中动画原理](http://blog.csdn.net/u013282507/article/details/70208141)

### [支付完成动画原理](http://blog.csdn.net/u013282507/article/details/70211889)

### 个人开发过的UI工具集合 [XLUIKit](https://github.com/mengxianliang/XLUIKit)


