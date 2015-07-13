//
//  gameView.h
//  TapGrid
//
//  Created by Michael Krumdick on 6/29/15.
//  Copyright (c) 2015 apptrocious. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "tapButton.h"


@interface gameView : UIViewController

@property NSNumber* currentRank; //current number
@property NSMutableArray *numbers; // array of the nine numbers to be set to the butttons
@property NSTimer *millitimer; //timer
@property int seconds;// number of seconds
@property int milliseconds;// number of milliseconds
@property double time;// the time to be set to the timer
//buttons
@property (weak, nonatomic) IBOutlet tapButton *button1;
@property (weak, nonatomic) IBOutlet tapButton *button2;
@property (weak, nonatomic) IBOutlet tapButton *button3;
@property (weak, nonatomic) IBOutlet tapButton *button4;
@property (weak, nonatomic) IBOutlet tapButton *button5;
@property (weak, nonatomic) IBOutlet tapButton *button6;
@property (weak, nonatomic) IBOutlet tapButton *button7;
@property (weak, nonatomic) IBOutlet tapButton *button8;
@property (weak, nonatomic) IBOutlet tapButton *button9;
//labels
@property (strong, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondTimerLabel;


@end
