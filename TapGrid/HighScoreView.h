//
//  HighScoreView.h
//  TapGrid
//
//  Created by Michael Krumdick on 7/22/15.
//  Copyright (c) 2015 apptrocious. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HighScoreView : UIViewController
@property NSNumber *score;
@property (weak, nonatomic) IBOutlet UILabel *HighScore;

@end
