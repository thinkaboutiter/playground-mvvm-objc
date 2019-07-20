//
//  FooViewController.m
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-21-Jul-Sun.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "FooViewController.h"

@interface FooViewController () <FooViewModelConsumer>
@property (nonatomic, strong) id<FooViewModel> _Nonnull viewModel;
@end

@implementation FooViewController

#pragma mark - Initialization
- (instancetype)initWithViewModel:(id<FooViewModel>)viewModel {
    self = [super initWithNibName:NSStringFromClass([FooViewController class])
                           bundle:nil];
    if (self) {
        _viewModel = viewModel;
        [_viewModel setViewModelConsumer:self];
    }
    debugLog(@"✅ %s » %@", __PRETTY_FUNCTION__, @"");
    return self;
}

- (void)dealloc {
    debugLog(@"💀 %s » %@", __PRETTY_FUNCTION__, @"");
}

#pragma mark - FooViewModelConsumer protocol

#pragma mark - Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Actions
- (IBAction)dismimssButton_touchUpInside:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
