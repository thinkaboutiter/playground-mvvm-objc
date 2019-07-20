//
//  InitialViewModel.h
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-16-Jul-Tue.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol InitialViewModel;

/**
 Functionality for the View object to implement.
 */
@protocol InitialViewModelConsumer <NSObject>
@end

/**
 Functionality for the `ViewModel` object to implement.
 */
@protocol InitialViewModel <NSObject>
- (void)setViewModelConsumer:(id<InitialViewModelConsumer> _Nullable)newValue;
@end

@interface InitialViewModelImpl: NSObject <InitialViewModel>
@end
