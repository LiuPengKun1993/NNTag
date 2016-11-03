//
//  NNTagButton.m
//  NNTag
//
//  Created by iOS on 16/11/3.
//  Copyright (c) 2016年 YMWM. All rights reserved.
//

#import "NNTagButton.h"
#import "UIView+NNView.h"

@implementation NNTagButton

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setImage:[UIImage imageNamed:@"chose_tag_close_icon"] forState:UIControlStateNormal];
        self.backgroundColor = [UIColor redColor];
        self.titleLabel.font = [UIFont systemFontOfSize:14];
    }
    return self;
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state
{
    [super setTitle:title forState:state];
    
    [self sizeToFit];
    
    self.width += 15;
    self.height = 25;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.titleLabel.x = 5;
    self.imageView.x = CGRectGetMaxX(self.titleLabel.frame) + 5;
}

@end
