//
//  InitialViewModel.m
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-16-Jul-Tue.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "InitialViewModel.h"
/*
 */
@interface InitialViewModelImpl()
@property (nonatomic, weak, readwrite, nullable) id<InitialViewModelConsumer> view;
@end

@implementation InitialViewModelImpl

#pragma mark - Accessors
- (void)setView:(id<InitialViewModelConsumer>)newValue
{
    self.view = newValue;
}

#pragma mark - Initialization
- (instancetype)init
{
    self = [super init];
    if (self) {
        // setup
    }
    return self;
}

- (void)dealloc
{
    debugLog(@"🛠 %s » \nDebug:\n%@\n", __PRETTY_FUNCTION__, [NSString stringWithFormat:@"deinitialized %@", NSStringFromClass([InitialViewModelImpl class])]);
}

@end

