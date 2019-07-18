//
//  InitialViewModel.m
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-16-Jul-Tue.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "InitialViewModel.h"

@interface InitialViewModelImpl()
/* Uncomment if two way references between View and ViewModel objects are needed. Be careful for retain cycles! */
//@property (nonatomic, weak) id<InitialViewModelConsumer> _Nullable view;
@end

@implementation InitialViewModelImpl

#pragma mark - Accessors
/* Uncomment if two way references between View and ViewModel objects are needed. Be careful for retain cycles! */
//- (void)setView:(id<InitialViewModelConsumer>)newValue {
//    self.view = newValue;
//}

#pragma mark - Initialization
- (instancetype)init {
    self = [super init];
    if (self) {
        // setup
    }
    return self;
}

- (void)dealloc {
    debugLog(@"🛠 %s » %@", __PRETTY_FUNCTION__, [NSString stringWithFormat:@"Deinitialized %@", NSStringFromClass([InitialViewModelImpl class])]);
}

@end
