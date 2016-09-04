# CHTTextView

自定义textview，给textView增加placeHolder

![] (https://github.com/ChanRoy/CHTTextView/blob/master/CHTTextView.gif)

## 简介

* 自定义textview，给textView增加placeHolder。支持Xib及代码初始化 

## 使用

### 初始化

#### 集成自UITextView，提供一个初始化接口

    - (instancetype)initWithFrame:(CGRect)frame；

### 属性

    @property (nonatomic, copy)     NSString * placeHolder;     //占位文字
    @property (nonatomic, strong)   UIColor * placeHolderColor; //占位文字的颜色

### 其他

* 其他方法与UITextView使用方法相同

## Demo

### xib
     //xib
    _textView.placeHolder = @"请输入内容";
    _textView.placeHolderColor = [UIColor grayColor];
    _textView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _textView.layer.borderWidth = 1;

### 代码
    
     //代码
    _textViewWithCode = [[CHTTextView alloc]initWithFrame:CGRectMake(0, 0, 300, 180)];
    _textViewWithCode.center = CGPointMake(SCREEN_WIDHT / 2, SCREEN_HEIGHT * 3/ 4);
    _textViewWithCode.text = @"123";
    _textViewWithCode.placeHolder = @"请输入内容";
    _textViewWithCode.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _textViewWithCode.layer.borderWidth = 1;
    [self.view addSubview:_textViewWithCode];
