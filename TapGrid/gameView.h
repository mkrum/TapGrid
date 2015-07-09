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

@property NSNumber* currentRank;
@property NSMutableArray *numbers;
@property NSTimer *timer;
@property int seconds;

@property (weak, nonatomic) IBOutlet tapButton *button1;
@property (weak, nonatomic) IBOutlet tapButton *button2;
@property (weak, nonatomic) IBOutlet tapButton *button3;
@property (weak, nonatomic) IBOutlet tapButton *button4;
@property (weak, nonatomic) IBOutlet tapButton *button5;
@property (weak, nonatomic) IBOutlet tapButton *button6;
@property (weak, nonatomic) IBOutlet tapButton *button7;
@property (weak, nonatomic) IBOutlet tapButton *button8;
@property (weak, nonatomic) IBOutlet tapButton *button9;

@property (strong, nonatomic) IBOutlet UILabel *timerLabel;


@end
