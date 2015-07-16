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
@property UIImage *theImage;
@property NSData *theImageData;

- (IBAction)takeScreenshot:(id)sender;

- (IBAction)sharePressed:(id)sender;

@end
