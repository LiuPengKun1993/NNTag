//
//  NNTagTextField.m
//  NNTag
//
//  Created by iOS on 16/11/3.
//  Copyright (c) 2016年 YMWM. All rights reserved.
//

#import "NNTagTextField.h"
#import "UIView+NNView.h"

@implementation NNTagTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.placeholder = @"添加标签";
        [self setValue:[UIColor grayColor] forKeyPath:@"_placeholderLabel.textColor"];
        self.height = 25;
    }
    return self;
}


- (void)deleteBackward
{
    !self.deleteBlock ? : self.deleteBlock();
    [super deleteBackward];
}

@end
