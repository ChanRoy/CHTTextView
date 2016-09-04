//
//  CHTTextView.m
//  QFangWangHK
//
//  Created by cht on 16/7/15.
//  Copyright © 2016年 qfangwanghk. All rights reserved.
//

#import "CHTTextView.h"

@interface CHTTextView ()

@property (nonatomic, weak) UILabel * placeHolderLabel;

@end


@implementation CHTTextView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setupUI];
    }
    return self;
}

- (void)awakeFromNib{
    
    [super awakeFromNib];
    
    [self setupUI];
}

- (void)setupUI{
    
    self.backgroundColor = [UIColor clearColor];
    UILabel * label = [[UILabel alloc]init];
    label.backgroundColor = [UIColor clearColor];
    label.numberOfLines = 0;
    [self addSubview:label];
    
    self.placeHolderLabel = label;
    
    self.placeHolderColor = [UIColor lightGrayColor];
    self.font = [UIFont systemFontOfSize:15];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(textDidChange) name:UITextViewTextDidChangeNotification object:self];
}

#pragma mark - set method
- (void)setPlaceHolder:(NSString *)placeHolder{
    
    _placeHolder = [placeHolder copy];
    
    self.placeHolderLabel.text = _placeHolder;
    
    [self setNeedsLayout];
}

- (void)setPlaceHolderColor:(UIColor *)placeHolderColor{
    
    _placeHolderColor = placeHolderColor;
    self.placeHolderLabel.textColor = _placeHolderColor;
}

#pragma mark - super method
- (void)setFont:(UIFont *)font{
    
    [super setFont:font];
    
    self.placeHolderLabel.font = font;
    
    [self setNeedsLayout];
}

- (void)setText:(NSString *)text{
    
    [super setText:text];
    
    [self textDidChange];
}

- (void)setAttributedText:(NSAttributedString *)attributedText{
    
    [super setAttributedText:attributedText];
    
    [self textDidChange];
}


- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    CGFloat xLabel = 8;
    CGFloat yLabel = 5;
    CGFloat width  = (self.frame.size.width - xLabel * 2);
    
    CGSize maxSize = CGSizeMake(width, MAXFLOAT);
    
    CGFloat height = [self.placeHolder boundingRectWithSize:maxSize options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : self.font} context:nil].size.height;
    
    self.placeHolderLabel.frame = CGRectMake(xLabel, yLabel, width, height);
    
    
}

#pragma mark - observer
- (void)textDidChange{
    
    self.placeHolderLabel.hidden = self.hasText;
}

- (void)dealloc{
    
    [[NSNotificationCenter defaultCenter]removeObserver:UITextViewTextDidChangeNotification];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
