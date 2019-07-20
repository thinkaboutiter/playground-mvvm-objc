//
//  InitialViewController.m
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-16-Jul-Tue.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "InitialViewController.h"
#import "FooViewController.h"

@interface InitialViewController () <InitialViewModelConsumer>
@property (nonatomic, strong) id<InitialViewModel> _Nonnull viewModel;
@property (nonatomic, strong) FooViewController * _Nonnull (^ _Nonnull fooVCFactory)(void);
@end

@implementation InitialViewController

#pragma mark - Initialization
- (instancetype)initWithViewModel:(id<InitialViewModel>)viewModel
                     fooVCFactory:(FooViewController * _Nonnull (^ _Nonnull)(void))fooVCFactory
{
    self = [super initWithNibName:NSStringFromClass([InitialViewController class])
                           bundle:nil];
    if (self) {
        _viewModel = viewModel;
        [_viewModel setViewModelConsumer:self];
        _fooVCFactory = fooVCFactory;
    }
    debugLog(@"✅ %s » %@", __PRETTY_FUNCTION__, @"");
    return self;
}

- (void)dealloc {
    debugLog(@"💀 %s » %@", __PRETTY_FUNCTION__, @"");
}

#pragma mark - InitialViewModelConsumer protocol

#pragma mark - Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Actions
- (IBAction)showFooScreenButton_touchUpInside:(UIButton *)sender {
    debugLog(@"🛠 %s » %@", __PRETTY_FUNCTION__, @"");
    FooViewController *vc = self.fooVCFactory();
    [self presentViewController:vc animated:YES completion:nil];
}

@end
