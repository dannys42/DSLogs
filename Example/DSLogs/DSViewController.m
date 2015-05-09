//
//  DSViewController.m
//  DSLogs
//
//  Created by Danny Sung on 05/08/2015.
//  Copyright (c) 2014 Danny Sung. All rights reserved.
//

#import "DSViewController.h"

@interface DSViewController ()

@end

@implementation DSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSLog(@"ENABLE_LOGS=%d\n", ENABLE_LOGS);
    DLog(@"This is a debug line and should only appear if ENABLE_LOGS=1\n");
    WLog(@"This line results in a warning regardless of ENABLE_LOGS.\n");
    ELog(@"This line results in an error regardless of ENABLE_LOGS.\n");
}


@end
