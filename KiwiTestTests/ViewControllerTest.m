//
//  KiwiTestTests.m
//  KiwiTestTests
//
//  Created by Jian Zhang on 4/26/15.
//  Copyright (c) 2015 Steve (Zhang Jian). All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "ViewController.h"

SPEC_BEGIN(ViewControllerTest)

describe(@"ViewController", ^{
    __block ViewController *viewController = nil;
    
    beforeAll(^{
        viewController = [[ViewController alloc] init];
    });
    
    it(@"setupui should call setupLayout", ^{
        [[viewController should] receive:@selector(setupLayout)];
        [viewController setupUI];
    });
    
    it(@"Doit", ^{
        [viewController stub:NSSelectorFromString(@"doIt") andReturn:theValue(NO)];
        [[[viewController hehe] should] equal:theValue(NO)];
    });
});

SPEC_END
