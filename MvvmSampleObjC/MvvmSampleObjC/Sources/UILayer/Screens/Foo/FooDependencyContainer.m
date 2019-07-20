//
//  FooDependencyContainer.m
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-21-Jul-Sun.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "FooDependencyContainer.h"
#import "FooViewController.h"
#import "FooViewModel.h"

@implementation FooDependencyContainer

#pragma mark - Initializaiton
- (instancetype)initWithInitialDependencyContainer:(InitialDependencyContainer *)initialDependencyContainer {
    self = [super init];
    if (self) {
        // Setup
        // If needed obtai any shared resources from parent container
    }
    debugLog(@"✅ %s » %@", __PRETTY_FUNCTION__, @"");
    return self;
}

- (void)dealloc {
    debugLog(@"💀 %s » %@", __PRETTY_FUNCTION__, @"");
}

#pragma mark - Factory methods
- (FooViewController *)makeFooViewController {
    id<FooViewModel> vm = [self makeFooViewModel];
    FooViewController *vc = [[FooViewController alloc] initWithViewModel:vm];
    return vc;
}

- (id<FooViewModel> _Nonnull)makeFooViewModel {
    id<FooViewModel> result = [[FooViewModelImpl alloc] init];
    return result;
}

@end
