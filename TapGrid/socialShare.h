//
//  socialShare.h
//  TapGrid
//
//  Created by David Durkin on 7/15/15.
//  Copyright (c) 2015 apptrocious. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface socialShare : UIViewController
@property NSNumber *highScore;
@property (weak, nonatomic) IBOutlet UIButton *tweetButton;

- (IBAction)sendTweet:(id)sender;

@end
