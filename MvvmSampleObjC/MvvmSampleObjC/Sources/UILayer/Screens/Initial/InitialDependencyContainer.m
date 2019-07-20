//
//  InitialDependencyContainer.m
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-21-Jul-Sun.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "InitialDependencyContainer.h"
#import "InitialViewController.h"
#import "InitialViewModel.h"

@implementation InitialDependencyContainer

#pragma mark - Initialization
- (instancetype)init {
    self = [super init];
    if (self) {
        // setup
    }
    debugLog(@"✅ %s » %@", __PRETTY_FUNCTION__, @"");
    return self;
}

#pragma mark - Factory methods
- (InitialViewController *)makeInitialViewController {
    id<InitialViewModel> vm = [self makeInitialViewModel];
    InitialViewController *vc =
    [[InitialViewController alloc] initWithViewModel:vm];
    return vc;
}

- (id<InitialViewModel> _Nonnull)makeInitialViewModel {
    id<InitialViewModel> result = [[InitialViewModelImpl alloc] init];
    return result;
}

@end
