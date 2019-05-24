//
//  ViewController.m
//  iOS富文本插入图片
//
//  Created by jukai on 2019/5/24.
//  Copyright © 2019 kyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *noteLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableAttributedString *vipStr = [[NSMutableAttributedString alloc]initWithString:@"点击解锁【超级方法】"];
    
    UIImage *vipImage = [UIImage imageNamed:@"WordDetailNor解锁"];
    NSTextAttachment *vipImageAttachment = [[NSTextAttachment alloc]init];
    vipImageAttachment.image = vipImage;
    vipImageAttachment.bounds = CGRectMake(0, 0, 13, 15);

    NSAttributedString *vipImageAttrStr = [NSAttributedString attributedStringWithAttachment:vipImageAttachment];
    
    [vipStr insertAttributedString:vipImageAttrStr atIndex:0];
    
    //设置空格文本
    [vipStr insertAttributedString:[[NSAttributedString alloc] initWithString:@" "] atIndex:1];
    //设置间距
    [vipStr addAttribute:NSKernAttributeName value:@(8)
                        range:NSMakeRange(1,1)];
   
    //设置字体和设置字体的范围
    [vipStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:15.0f] range:NSMakeRange(0, vipStr.length)];
    
    [self.noteLabel setAttributedText:vipStr];
    
    // Do any additional setup after loading the view.
}

//[vipStr insertAttributedString:[[NSAttributedString alloc] initWithString:@"   "] atIndex:0];

@end
