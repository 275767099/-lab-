//
//  ViewController.m
//  ColorLable
//
//  Created by YSH on 15/8/26.
//  Copyright (c) 2015年 MMXCOO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initLab];
}

-(void)initLab{
    NSMutableAttributedString * str = [[NSMutableAttributedString alloc]initWithString:@"新闻:" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17],NSForegroundColorAttributeName:[UIColor redColor]}];
    NSMutableAttributedString * str1 = [[NSMutableAttributedString alloc]initWithString:@"湖北建始县黄鹤桥峰林景区，游客乘坐观光电梯。" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17],NSForegroundColorAttributeName:[UIColor blueColor]}];
    
     NSMutableAttributedString * str2 = [[NSMutableAttributedString alloc]initWithString:@"该观光电梯通高88米，耸立在两座山体狭缝绝壁之间。" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17],NSForegroundColorAttributeName:[UIColor orangeColor]}];
     NSMutableAttributedString * str3 = [[NSMutableAttributedString alloc]initWithString:@"梯体垂直、透明，游客乘坐时无限风景可尽收眼底。" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17],NSForegroundColorAttributeName:[UIColor greenColor]}];
    [str2 appendAttributedString:str3];
    [str1 appendAttributedString:str2];
    [str appendAttributedString:str1];
    
    UILabel * lab = [[UILabel alloc]init];
    lab.attributedText = str;
    CGSize size = [lab.text sizeWithFont:lab.font constrainedToSize:CGSizeMake(320-40, 1000)];
    lab.numberOfLines = 0;
    lab.frame = CGRectMake(20, 100, size.width, size.height);
    [self.view addSubview:lab];
}

@end
