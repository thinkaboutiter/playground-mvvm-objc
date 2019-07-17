//
//  InitialViewController.m
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-16-Jul-Tue.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "InitialViewController.h"
#import "UIViewController+Categories.h"
#import "DummyViewController.h"
#import "DummyViewModel.h"

@interface InitialViewController () <InitialViewModelConsumer>
@property (nonatomic, strong) id<InitialViewModel> _Nonnull viewModel;
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
    debugLog(@"🛠 %s » \nDebug:\n%@\n", __PRETTY_FUNCTION__, [NSString stringWithFormat:@"Deinitialized %@", NSStringFromClass([InitialViewController class])]);
}

#pragma mark - Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Actions
- (IBAction)showDummyScreenButton_touchUpInside:(UIButton *)sender {
    DummyViewController* vc = (DummyViewController *)[UIViewController fromStoryboardWithName:[AppConstants storyboardNameForStoryboardId:kStoryboardId_dummy]
                                                                                       bundle:nil
                                                                                   identifier:NSStringFromClass([DummyViewController class])];
    if (vc == nil) {
        debugLog(@"❌ %s » \nError:\n%@\n", __PRETTY_FUNCTION__, [NSString stringWithFormat:@"Unable to instantiate %@", NSStringFromClass([DummyViewController class])]);
        return;
    }
    id<DummyViewModel> vm = [[DummyViewModelImpl alloc] init];
    [vc setViewModel:vm];
    [self presentViewController:vc
                       animated:YES
                     completion:nil];
}

@end
