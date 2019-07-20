//
//  InitialViewController.h
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-16-Jul-Tue.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "InitialViewModel.h"

@interface InitialViewController : BaseViewController <InitialViewModelConsumer>

- (instancetype _Nonnull)initWithViewModel:(id<InitialViewModel> _Nonnull)viewModel NS_DESIGNATED_INITIALIZER;
- (instancetype _Nonnull)initWithNibName:(NSString * _Nullable)nibNameOrNil
                                  bundle:(NSBundle * _Nullable)nibBundleOrNil NS_UNAVAILABLE;
- (instancetype _Nullable)initWithCoder:(NSCoder * _Nonnull)aDecoder NS_UNAVAILABLE;

@end
