//
//  MyViewController.m
//  NavBarTransitionTest
//
//  Created by 顾超 on Dec/15/15.
//  Copyright © 2015 顾超. All rights reserved.
//

#import "MyViewController.h"

@implementation MyViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor whiteColor];
}

- (IBAction)push:(id)sender {
  MyViewController *vc = [MyViewController new];
  vc.title = @"Second";
  [vc.backgroundNavBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
  vc.backgroundNavBar.shadowImage = [UIImage new];
  [self.navigationController pushViewController:vc animated:YES];
}

@end
