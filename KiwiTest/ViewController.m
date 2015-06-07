//
//  ViewController.m
//  KiwiTest
//
//  Created by Jian Zhang on 4/26/15.
//  Copyright (c) 2015 Steve (Zhang Jian). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (assign, nonatomic) BOOL pass;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _pass = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setupUI {
    NSLog(@"setupUI");
    [self setupLayout];
}

- (void)setupLayout {
    NSLog(@"setupLayout");
    _pass = YES;
}

- (BOOL)doIt {
    return YES;
}

- (NSNumber *)hehe {
    if ([self doIt]) {
        return @YES;
    }
    return @NO;
}

@end
