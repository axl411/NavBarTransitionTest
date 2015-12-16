//
//  ViewController.m
//  NavBarTransitionTest
//
//  Created by 顾超 on Dec/15/15.
//  Copyright © 2015 顾超. All rights reserved.
//

#import "ViewController.h"
#import "NVMImageMaker.h"

@interface ViewController ()

@property (nonatomic, strong) UINavigationBar *backgroundNavBar;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
  self.navigationController.navigationBar.shadowImage = [UIImage new];
  [self.view addSubview:self.backgroundNavBar];
}

- (UINavigationBar *)backgroundNavBar {
  if (!_backgroundNavBar) {
    CGRect navBarRect = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64);
    _backgroundNavBar = [[UINavigationBar alloc] initWithFrame:navBarRect];
    [_backgroundNavBar setBackgroundImage:nvm_beginImage(navBarRect.size).fillColor([UIColor magentaColor]).make forBarMetrics:UIBarMetricsDefault];
  }
  return _backgroundNavBar;
}

@end
