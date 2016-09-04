//
//  ViewController.m
//  CHTTextViewDemo
//
//  Created by mac on 16/9/4.
//  Copyright © 2016年 Roy Chan. All rights reserved.
//

#import "ViewController.h"
#import "CHTTextView.h"

#define SCREEN_WIDHT [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@property (weak, nonatomic) IBOutlet CHTTextView *textView;

@property (nonatomic, strong) CHTTextView *textViewWithCode;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //xib
    _textView.placeHolder = @"请输入内容";
    _textView.placeHolderColor = [UIColor grayColor];
    _textView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _textView.layer.borderWidth = 1;
    
    //代码
    _textViewWithCode = [[CHTTextView alloc]initWithFrame:CGRectMake(0, 0, 300, 180)];
    _textViewWithCode.center = CGPointMake(SCREEN_WIDHT / 2, SCREEN_HEIGHT * 3/ 4);
    _textViewWithCode.text = @"123";
    _textViewWithCode.placeHolder = @"请输入内容";
    _textViewWithCode.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _textViewWithCode.layer.borderWidth = 1;
    [self.view addSubview:_textViewWithCode];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
