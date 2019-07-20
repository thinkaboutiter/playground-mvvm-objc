//
//  FooViewModel.h
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-21-Jul-Sun.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FooViewModel;

/**
 Functionality for the `View` object to implement.
 */
@protocol FooViewModelConsumer <NSObject>
@end

/**
 Functionality for the `ViewModel` object to implement.
 */
@protocol FooViewModel <NSObject>
- (void)setViewModelConsumer:(id<FooViewModelConsumer> _Nullable)newValue;
@end

@interface FooViewModelImpl: NSObject <FooViewModel>
@end

