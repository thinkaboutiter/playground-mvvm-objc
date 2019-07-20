//
//  FooDependencyContainer.h
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-21-Jul-Sun.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class InitialDependencyContainer;
@class FooViewController;

@interface FooDependencyContainer : NSObject
- (instancetype _Nonnull)init NS_UNAVAILABLE;
- (instancetype _Nonnull)initWithInitialDependencyContainer:(InitialDependencyContainer * _Nonnull)initialDependencyContainer;

- (FooViewController * _Nonnull)makeFooViewController;
@end
