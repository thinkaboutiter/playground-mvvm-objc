//
//  DummyViewModel.h
//  MvvmSampleObjC
//
//  Created by boyankov on 2019-W29-17-July-Wed.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DummyViewModel;

/**
 Functionality for the View object to implement.
 */
@protocol DummyViewModelConsumer <NSObject>
- (nonnull id<DummyViewModel>)viewModel;
- (void)setViewModel:(nonnull id<DummyViewModel>)newValue;
@end

/**
 Functionality for the `ViewModel` object to implement.
 */
@protocol DummyViewModel <NSObject>
/* Uncomment if two way references between View and ViewModel objects are needed. Be careful for retain cycles! */
//- (void)setView:(nonnull id<DummyViewModelConsumer>)newValue;
@end

@interface DummyViewModelImpl: NSObject <DummyViewModel>
@end

