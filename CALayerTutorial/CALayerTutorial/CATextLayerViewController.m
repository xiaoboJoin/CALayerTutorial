//
//  CATextLayerViewController.m
//  CALayerTutorial
//
//  Created by iXiaobo on 15/5/4.
//  Copyright (c) 2015年 iXiaobo. All rights reserved.
//

#import "CATextLayerViewController.h"

@interface CATextLayerViewController ()

@end

@implementation CATextLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTextLayer];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupTextLayer
{
    CATextLayer *textLayer = [CATextLayer layer];
    textLayer.frame = CGRectMake(60, 100, 200, 200);
    
    NSString *string = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor arcu quis velit congue dictum. ";
    textLayer.string = string;
   // textLayer.font =

    textLayer.foregroundColor = [UIColor darkGrayColor].CGColor;
    textLayer.wrapped = true;
    textLayer.alignmentMode = kCAAlignmentLeft;
    textLayer.contentsScale = [UIScreen mainScreen].scale;
    
    [self.view.layer addSublayer:textLayer];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
