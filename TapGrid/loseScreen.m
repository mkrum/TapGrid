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
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger HighScore = [defaults integerForKey:@"HighScore"];
    if ([score integerValue] > HighScore) {
        _highScoreLabel.text =@"High Score:", [score stringValue];
        [defaults setInteger:[score integerValue] forKey:@"HighScore"];
         } else {
             _highScoreLabel.text = [NSString stringWithFormat:@" Best: %ld",(long)HighScore];
         }
    _scoreLabel.text = [score stringValue];
}

@end
