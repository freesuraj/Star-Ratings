//
//  SPViewController.m
//  StarRatings
//
//  Created by Suraj Pathak on 19/2/14.
//  Copyright (c) 2014 Suraj Pathak. All rights reserved.
//

#import "SPViewController.h"
#import "SPStarRatings.h"

@interface SPViewController ()

@end

@implementation SPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	SPStarRatings *star = [[SPStarRatings alloc] initWithFrame:CGRectMake(00, 200, 320, 200)];
    [self.view addSubview:star];
    [star setRating:4];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
