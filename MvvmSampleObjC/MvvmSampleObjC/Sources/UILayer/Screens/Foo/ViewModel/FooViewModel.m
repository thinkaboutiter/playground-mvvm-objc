//
//  FooViewModel.m
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-21-Jul-Sun.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "FooViewModel.h"

@interface FooViewModelImpl()
@property (nonatomic, weak) id<FooViewModelConsumer> _Nullable viewModelConsumer;
@end

@implementation FooViewModelImpl

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

#pragma mark - FooViewModel protocol
- (void)setViewModelConsumer:(id<FooViewModelConsumer>)newValue {
    _viewModelConsumer = newValue;
}

@end
