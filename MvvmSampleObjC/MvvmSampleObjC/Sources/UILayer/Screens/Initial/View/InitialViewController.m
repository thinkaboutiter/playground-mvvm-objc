//
//  InitialViewController.m
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-16-Jul-Tue.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "InitialViewController.h"

@interface InitialViewController () <InitialViewModelConsumer>
@property (nonatomic, strong, nonnull) id<InitialViewModel> viewModel;
@end

@implementation InitialViewController
@synthesize viewModel = _viewModel;

#pragma mark - InitialViewModelConsumer protocol
- (void)setViewModel:(id<InitialViewModel>)newValue {
    _viewModel = newValue;
}

- (id<InitialViewModel>)viewModel {
    return self.viewModel;
}

#pragma mark - Initialization
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        // setup
    }
    return self;
}

- (void)dealloc {
    debugLog(@"🛠 %s » \nDebug:\n%@\n", __PRETTY_FUNCTION__, [NSString stringWithFormat:@"deinitialized %@", NSStringFromClass([InitialViewController class])]);
}

#pragma mark - Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Actions
- (IBAction)showDummyScreenButton_touchUpInside:(UIButton *)sender {
    debugLog(@"🛠 %s » \nDebug:\n%@\n", __PRETTY_FUNCTION__, @"Implement me!");
}

@end
