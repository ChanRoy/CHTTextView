//
//  CHTTextView.h
//  QFangWangHK
//
//  Created by cht on 16/7/15.
//  Copyright © 2016年 qfangwanghk. All rights reserved.
//

#import <UIKit/UIKit.h>

//自定义textview，给textView增加placeHolder
@interface CHTTextView : UITextView

@property (nonatomic, copy)     NSString * placeHolder;
@property (nonatomic, strong)   UIColor * placeHolderColor;

@end
