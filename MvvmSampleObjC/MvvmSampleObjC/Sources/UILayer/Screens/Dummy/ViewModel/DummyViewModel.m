//
//  DummyViewModel.m
//  MvvmSampleObjC
//
//  Created by boyankov on 2019-W29-17-July-Wed.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "DummyViewModel.h"

@interface DummyViewModelImpl()
/* Uncomment if two way references between `View` and `ViewModel` objects are needed. Be careful for retain cycles! */
@property (nonatomic, weak) id<DummyViewModelConsumer> _Nullable view;
@end

@implementation DummyViewModelImpl

#pragma mark - DummyViewModel protocol
/* Uncomment if two way references between `View` and `ViewModel` objects are needed. Be careful for retain cycles! */
- (void)setView:(id<DummyViewModelConsumer>)newValue {
    _view = newValue;
}

#pragma mark - Initialization
- (instancetype)init {
    self = [super init];
    if (self) {
        // setup
    }
    return self;
}

- (void)dealloc {
    debugLog(@"🛠 %s » \nDebug:\n%@\n", __PRETTY_FUNCTION__, [NSString stringWithFormat:@"Deinitialized %@", NSStringFromClass([DummyViewModelImpl class])]);
}

@end
