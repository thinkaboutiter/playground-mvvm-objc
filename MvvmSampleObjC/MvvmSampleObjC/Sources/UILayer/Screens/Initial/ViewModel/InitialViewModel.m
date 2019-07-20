//
//  InitialViewModel.m
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-16-Jul-Tue.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "InitialViewModel.h"

@interface InitialViewModelImpl()
@property (nonatomic, weak) id<InitialViewModelConsumer> _Nullable viewModelConsumer;
@end

@implementation InitialViewModelImpl

#pragma mark - InitialViewModel protocol
- (void)setViewModelConsumer:(id<InitialViewModelConsumer>)newValue {
    _viewModelConsumer = newValue;
}

#pragma mark - Initialization
- (instancetype)init {
    self = [super init];
    if (self) {
        // setup
    }
    debugLog(@"✅ %s » %@", __PRETTY_FUNCTION__, @"");
    return self;
}

- (void)dealloc {
    debugLog(@"💀 %s » %@", __PRETTY_FUNCTION__, @"");
}

@end
