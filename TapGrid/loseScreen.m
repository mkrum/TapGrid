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
    _highScoreLabel.text = [NSString stringWithFormat:@" Best: %ld",(long)HighScore];
    _scoreLabel.text = [score stringValue];
}

- (UIImage *)takeScreenshot
    {
        UIGraphicsBeginImageContext(self.view.frame.size);
        [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image;
    }


- (IBAction)shareTwitterPressed:(id)sender {
    NSString *tweet = [NSString stringWithFormat:@"I got to %@%@",_scoreLabel.text,@" in the fun, brain-teasing app, TapGrid! Think you can do better?"];
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet addImage:[self takeScreenshot]];
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

- (IBAction)shareFacebookPressed:(id)sender {
    NSString *facebookPost = [NSString stringWithFormat:@"I got to %@%@",_scoreLabel.text,@" in the fun, brain-teasing app, TapGrid! Think you can do better?"];
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook])
    {
        SLComposeViewController *facebookSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [facebookSheet addImage:[self takeScreenshot]];
        [facebookSheet setInitialText:facebookPost];
        
        [self presentViewController:facebookSheet animated:YES completion:nil];
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Sorry"
                                  message:@"You can't post to Facebook right now, make sure your device has an internet connection and you have at least one Facebook account setup"
                                  delegate:self
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles:nil];
        [alertView show];
    }
}
@end
