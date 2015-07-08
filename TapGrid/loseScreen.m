//
//  loseScreen.m
//  TapGrid
//
//  Created by Michael Krumdick on 7/7/15.
//  Copyright (c) 2015 apptrocious. All rights reserved.
//

#import "loseScreen.h"

@implementation loseScreen

@synthesize score;


-(void)viewDidLoad{
    _scoreLabel.text = [score stringValue];
}

@end
