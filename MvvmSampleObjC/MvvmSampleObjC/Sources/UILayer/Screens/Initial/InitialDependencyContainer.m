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
#import "FooDependencyContainer.h"

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
    
    // factory block
    FooViewController * _Nonnull (^ _Nonnull fooVCFactory)(void) =
    ^FooViewController * _Nonnull (void) {
        return [self makeFooViewController];
    };
    
    InitialViewController *vc =
    [[InitialViewController alloc] initWithViewModel:vm
                                        fooVCFactory:fooVCFactory];
    return vc;
}

- (id<InitialViewModel> _Nonnull)makeInitialViewModel {
    id<InitialViewModel> result = [[InitialViewModelImpl alloc] init];
    return result;
}

- (FooViewController * _Nonnull)makeFooViewController {
    FooDependencyContainer *container = [[FooDependencyContainer alloc] initWithInitialDependencyContainer:self];
    FooViewController *vc = [container makeFooViewController];
    return vc;
}

@end
