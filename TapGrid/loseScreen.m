//
//  loseScreen.m
//  TapGrid
//
//  Created by Michael Krumdick on 7/7/15.
//  Copyright (c) 2015 apptrocious. All rights reserved.
//

#import "loseScreen.h"
#import "socialShare.h"
#import <Social/Social.h>

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

- (IBAction)sharePressed:(id)sender {
    NSString *tweet = [NSString stringWithFormat:@"I got to %@",_scoreLabel.text];
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:tweet];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Sorry"
                                  message:@"You can't tweet right now, make sure your device has an internet connection and you have at least one Twitter account setup"
                                  delegate:self
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles:nil];
        [alertView show];
    }
}
@end
