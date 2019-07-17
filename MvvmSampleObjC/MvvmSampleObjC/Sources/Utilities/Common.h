//
//  Common.h
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-16-Jul-Tue.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#ifndef Common_h
#define Common_h

#ifdef DEBUG
#define debugLog(...) NSLog(__VA_ARGS__)
#else
#define debugLog(...)
#endif

#pragma mark - Imports
#import "AppConstants.h"

#endif /* Common_h */
