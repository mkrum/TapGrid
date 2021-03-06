//
//  loseScreen.h
//  TapGrid
//
//  Created by Michael Krumdick on 7/7/15.
//  Copyright (c) 2015 apptrocious. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <QuartzCore/QuartzCore.h>

@interface loseScreen : UIViewController
@property NSNumber *score;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *highScoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;

- (UIImage *)takeScreenshot;

- (IBAction)shareTwitterPressed:(id)sender;
- (IBAction)shareFacebookPressed:(id)sender;

@end
