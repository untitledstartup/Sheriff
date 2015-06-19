//
//  SheriffTests.m
//  SheriffTests
//
//  Created by Michael Amaral on 6/18/15.
//  Copyright (c) 2015 Michael Amaral. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "GIBadgeView.h"

@interface SheriffTests : XCTestCase {
    GIBadgeView *_badgeView;
}

@end

@implementation SheriffTests

- (void)setUp {
    [super setUp];

    _badgeView = [GIBadgeView new];
}

- (void)tearDown {
    _badgeView = nil;

    [super tearDown];

}

- (void)testSetBadgeValue {
    _badgeView.badgeValue = 5;
    XCTAssertEqual(_badgeView.badgeValue, 5);

    _badgeView.badgeValue = 22;
    XCTAssertEqual(_badgeView.badgeValue, 22);

    _badgeView.badgeValue = -12;
    XCTAssertEqual(_badgeView.badgeValue, 0);

    [_badgeView setBadgeValue:1011];
    XCTAssertEqual(_badgeView.badgeValue, 1011);
}

- (void)testIncrement {
    for (NSInteger i = 0; i < 100; i++) {
        XCTAssertEqual(_badgeView.badgeValue, i);

        [_badgeView increment];
    }
}

- (void)testDecrement {
    NSInteger startingValue = 95;

    _badgeView.badgeValue = startingValue;

    for (NSInteger i = startingValue; i > -10; --i) {
        NSInteger expectedValue = (i < 0) ? 0 : i;

        XCTAssertEqual(_badgeView.badgeValue, expectedValue);

        [_badgeView decrement];
    }
}

@end
