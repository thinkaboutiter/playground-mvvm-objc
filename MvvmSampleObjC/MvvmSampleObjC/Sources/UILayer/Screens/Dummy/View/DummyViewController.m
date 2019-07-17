//
//  DummyViewController.m
//  MvvmSampleObjC
//
//  Created by boyankov on 2019-W29-17-July-Wed.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "DummyViewController.h"

@interface DummyViewController ()
@property (nonatomic, strong, nonnull) id<DummyViewModel> viewModel;
@end

@implementation DummyViewController
@synthesize viewModel = _viewModel;

#pragma mark - DummyViewModelConsumer protocol
- (void)setViewModel:(id<DummyViewModel>)newValue {
    _viewModel = newValue;
    /* Uncomment if two way references between View and ViewModel objects are needed. Be careful for retain cycles! */
    [_viewModel setView:self];
}

- (id<DummyViewModel>)viewModel {
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
    debugLog(@"🛠 %s » \nDebug:\n%@\n", __PRETTY_FUNCTION__, [NSString stringWithFormat:@"deinitialized %@", NSStringFromClass([DummyViewController class])]);
}

#pragma mark - Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Actions

- (IBAction)dismissButton_touchUpInside:(UIButton *)sender {
    debugLog(@"🛠 %s » \nDebug:\n%@\n", __PRETTY_FUNCTION__, @"");
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
