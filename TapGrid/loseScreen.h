//
//  loseScreen.h
//  TapGrid
//
//  Created by Michael Krumdick on 7/7/15.
//  Copyright (c) 2015 apptrocious. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loseScreen : UIViewController
@property NSNumber *score;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end
