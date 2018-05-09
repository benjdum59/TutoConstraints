//
//  ProgrammaticConstraintsViewController.m
//  TutoConstraints
//
//  Created by Benjamin Dumont on 09/05/2018.
//  Copyright © 2018 Benjamin Dumont. All rights reserved.
//

#import "ProgrammaticConstraintsViewController.h"

@interface ProgrammaticConstraintsViewController ()

@end

@implementation ProgrammaticConstraintsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView * redView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    UIView * blueView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];

    redView.backgroundColor = [UIColor redColor];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:redView];
    [redView addSubview:blueView];
    [self addViewConstraints:redView];
    [self addViewConstraintsVisualFormat:blueView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) addViewConstraints: (UIView *)view {
    NSLayoutConstraint * leading = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:view.superview attribute:NSLayoutAttributeLeading multiplier:1.0 constant:8.0];
    NSLayoutConstraint * trailing = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:view.superview attribute:NSLayoutAttributeTrailingMargin multiplier:1.0 constant:8.0];
    NSLayoutConstraint * top = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:view.superview attribute:NSLayoutAttributeTopMargin multiplier:1.0 constant:8.0];
    NSLayoutConstraint * bottom = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:view.superview attribute:NSLayoutAttributeBottomMargin multiplier:1.0 constant:8.0];
    
    view.translatesAutoresizingMaskIntoConstraints = NO;

    [NSLayoutConstraint activateConstraints:@[top, bottom, leading, trailing]];
}

- (void) addViewConstraintsVisualFormat:(UIView *)view {
    NSArray <NSLayoutConstraint *> * horizontal = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-15-[view]-15-|" options:NSLayoutFormatAlignAllLeft metrics:nil views:@{@"view":view}];
    NSArray <NSLayoutConstraint *> * vertical = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-15-[view]-15-|" options:NSLayoutFormatAlignAllLeft metrics:nil views:@{@"view":view}];
    
    view.translatesAutoresizingMaskIntoConstraints = NO;
    
    [NSLayoutConstraint activateConstraints:horizontal];
    [NSLayoutConstraint activateConstraints:vertical];


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
