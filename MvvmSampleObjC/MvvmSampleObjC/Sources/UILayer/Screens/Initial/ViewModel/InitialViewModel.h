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
- (nonnull id<InitialViewModel>)viewModel;
- (void)setViewModel:(nonnull id<InitialViewModel>)newValue;
@end

/**
 Functionality for the `ViewModel` object to implement.
 */
@protocol InitialViewModel <NSObject>
/* Uncomment if two way references between View and ViewModel objects are needed. Be careful for retain cycles! */
//- (void)setView:(nonnull id<InitialViewModelConsumer>)newValue;
@end

@interface InitialViewModelImpl: NSObject <InitialViewModel>
@end
