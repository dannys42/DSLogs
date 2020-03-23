//
//  DSViewController.m
//  ExampleApp
//
//  Created by Danny Sung on 05/08/2015.
//  Copyright (c) 2014 Danny Sung. All rights reserved.
//

#import "ObjCViewController.h"
#import <DSLogs/DSLogs.h>

@interface ObjCViewController ()

@end

@implementation ObjCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

#if defined(ENABLE_LOGS)
    NSLog(@"[ObjC] ENABLE_LOGS=%d\n", ENABLE_LOGS);
#else
    NSLog(@"[ObjC] ENABLE_LOGS not specified (disabled)\n");
#endif
    DLog(@"[ObjC] This is a debug line and should only appear if ENABLE_LOGS=1\n");
    WLog(@"[ObjC] This line results in a warning regardless of ENABLE_LOGS.\n");
    ELog(@"[ObjC] This line results in an error regardless of ENABLE_LOGS.\n");
}


@end
