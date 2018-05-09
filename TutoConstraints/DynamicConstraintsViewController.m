//
//  DynamicConstraintsViewController.m
//  TutoConstraints
//
//  Created by Benjamin Dumont on 09/05/2018.
//  Copyright © 2018 Benjamin Dumont. All rights reserved.
//

#import "DynamicConstraintsViewController.h"

@interface DynamicConstraintsViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *trailingIphone;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *trailingIpad;

@end

@implementation DynamicConstraintsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad) {
        [self updateConstraintsForIpad];
    }
}

- (void) updateConstraintsForIpad {
    self.leading.constant = 100;
    self.trailingIpad.priority = 750;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
