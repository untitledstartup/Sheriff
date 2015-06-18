//
//  DemoViewController.m
//  Sheriff
//
//  Created by Michael Amaral on 6/18/15.
//  Copyright (c) 2015 Michael Amaral. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"-" style:UIBarButtonItemStylePlain target:self action:@selector(decrement)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"+" style:UIBarButtonItemStylePlain target:self action:@selector(increment)];

    self.logoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
    self.logoImageView.clipsToBounds = NO;
    self.logoImageView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.logoImageView];

    self.badgeView = [GIBadgeView new];
    [self.logoImageView addSubview:self.badgeView];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];

    self.logoImageView.frame = CGRectMake(0, 0, 200, 200);
    self.logoImageView.center = self.view.center;
}


#pragma mark - Actions

- (void)increment {
    if (self.badgeView.badgeValue == 5) {
        [self.badgeView setBadgeValue:10];
    }

    else if (self.badgeView.badgeValue == 15) {
        [self.badgeView setBadgeValue:100];
    }

    else if (self.badgeView.badgeValue == 105) {
        [self.badgeView setBadgeValue:1000];
    }

    else if (self.badgeView.badgeValue == 1005) {
        [self.badgeView setBadgeValue:10000];
    }

    else {
        [self.badgeView increment];
    }
}

- (void)decrement {
    if (self.badgeView.badgeValue == 100) {
        [self.badgeView setBadgeValue:20];
    }

    else if (self.badgeView.badgeValue == 15) {
        [self.badgeView setBadgeValue:9];
    }

    else {
        [self.badgeView decrement];
    }
}

@end
