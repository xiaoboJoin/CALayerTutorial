//
//  CALayerViewController.m
//  CALayerTutorial
//
//  Created by iXiaobo on 15/5/4.
//  Copyright (c) 2015年 iXiaobo. All rights reserved.
//

#import "CALayerViewController.h"

@interface CALayerViewController ()

@property (weak, nonatomic) IBOutlet UIView *viewForLayer;
@end

@implementation CALayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CALayer *)viewLayer
{
    return self.viewForLayer.layer;
}



- (void)setUpLayer
{
    
    [self viewLayer].backgroundColor = [UIColor blueColor].CGColor;
    [self viewLayer].borderWidth = 50.0;
    [self viewLayer].borderColor = [UIColor redColor].CGColor;
    [self viewLayer].shadowOpacity = 0.7;
    [self viewLayer].shadowRadius = 10.0;
    [self viewLayer].contents = (__bridge id)([UIImage imageNamed:@"star"].CGImage);
    [self viewLayer].contentsGravity = kCAGravityCenter;
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
