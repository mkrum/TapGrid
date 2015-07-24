//
//  gameView.m
//  TapGrid
//
//  Created by Michael Krumdick on 6/29/15.
//  Copyright (c) 2015 apptrocious. All rights reserved.
//

#import "gameView.h"
#import "loseScreen.h"
#import "HighScoreView.h"

@implementation gameView

-(void)viewDidLoad{
    
    self.numbers = [NSMutableArray array];
    for (int i = 1; i < 10; i++) {
        [self.numbers addObject:[NSNumber numberWithInt:i]];
    }
    _currentRank = [NSNumber numberWithInt:0];
    [self initalSet];
    
}
//randomizing the numbers in an array
-(void) shuffle: (NSMutableArray*) numbers{
    int rand;
    NSNumber *temp;
    for (int i = 0; i < 9; i++) {
        rand = arc4random_uniform(9);
        temp = numbers[i];
        numbers[i] = numbers[rand];
        numbers[rand] = temp;
    }
    
}

//doing the initial setup
-(void)initalSet{
    
    [self shuffle:_numbers];
    
    [_button1 set: _numbers[0]];
    [_button2 set: _numbers[1]];
    [_button3 set: _numbers[2]];
    [_button4 set: _numbers[3]];
    [_button5 set: _numbers[4]];
    [_button6 set: _numbers[5]];
    [_button7 set: _numbers[6]];
    [_button8 set: _numbers[7]];
    [_button9 set: _numbers[8]];
    _timerLabel.text = @"Start!";
    [self set];
    _time = 10.0;
    [self startTimer];
    
}
//start the timer
-(void)startTimer{
    
    self.seconds = floor(_time);
    _secondTimerLabel.text = [NSString stringWithFormat:@"%d.", self.seconds];
    self.milliseconds = 1000 *(_time-floor(_time));
    self.millitimer = [NSTimer scheduledTimerWithTimeInterval:.001 target:self selector:@selector(runMilliseconds) userInfo:nil repeats:YES];
    
}

//runs every millisecond
-(void) runMilliseconds{
    
    _timerLabel.text = [[NSNumber numberWithInt:_milliseconds] stringValue];
    
    if (_milliseconds == 0){
        _seconds = _seconds - 1;
        _secondTimerLabel.text = [NSString stringWithFormat:@"%d.", self.seconds];
        _milliseconds = 1000;
    }
    _milliseconds = _milliseconds - 1;
    if (_seconds == 0){
        [_millitimer invalidate];
        [self segAway];
    }

}

//increases all the number values by 9 and randomizes them
-(void)set{
    
    for (int i = 0; i < 9; i++) {
        _numbers[i] = [NSNumber numberWithInt:[_numbers[i] intValue] + 9];
    }
    
    [self shuffle:_numbers];
}

//called on every button press
-(void) buttonPress: (tapButton*) button{
    NSNumber *rank = [NSNumber numberWithInt:[[button getNumber] intValue]];
    _currentRank = [NSNumber numberWithInt:[_currentRank intValue]];
    
    if ([rank intValue] != ([_currentRank intValue] + 1)){
        [_millitimer invalidate];
        [self segAway];
        
    }
        else{
            int value = [_currentRank intValue];
            _currentRank = [NSNumber numberWithInt:value + 1];
            [button set: _numbers[[rank intValue] % 9]];
            }
    
    if([rank intValue] % 9 == 0){
        [self set];
        _time = _time*(.9);
        [_millitimer invalidate];
        [self startTimer];
        CGFloat red = arc4random() % 255 / 255.0;
        CGFloat green = arc4random() % 255 / 255.0;
        CGFloat blue = arc4random() % 255 / 255.0;
        [self.view setBackgroundColor:[UIColor colorWithRed:red green:green blue:blue alpha:1.0]];
        [self setButtonColors:[UIColor colorWithRed:blue green:red blue:green alpha:1.0]];
    }

}
//sets all the buttons to the same color
-(void)setButtonColors:(UIColor*) color{
    
    [_button1 setTitleColor:color forState:UIControlStateNormal];
    [_button2 setTitleColor:color forState:UIControlStateNormal];
    [_button3 setTitleColor:color forState:UIControlStateNormal];
    [_button4 setTitleColor:color forState:UIControlStateNormal];
    [_button5 setTitleColor:color forState:UIControlStateNormal];
    [_button6 setTitleColor:color forState:UIControlStateNormal];
    [_button7 setTitleColor:color forState:UIControlStateNormal];
    [_button8 setTitleColor:color forState:UIControlStateNormal];
    [_button9 setTitleColor:color forState:UIControlStateNormal];
    
}


- (IBAction)button1Press:(id)sender {
    [self buttonPress:sender];
}
- (IBAction)button2Press:(id)sender {
    [self buttonPress:sender];
}
- (IBAction)button3Press:(id)sender {
    [self buttonPress:sender];
}
- (IBAction)button4Press:(id)sender {
    [self buttonPress:sender];
}
- (IBAction)button5Press:(id)sender {
    [self buttonPress:sender];
}
- (IBAction)button6Press:(id)sender {
    [self buttonPress:sender];
}
- (IBAction)button7Press:(id)sender {
    [self buttonPress:sender];
}
- (IBAction)button8Press:(id)sender {
    [self buttonPress:sender];
}
- (IBAction)button9Press:(id)sender {
    [self buttonPress:sender];
}
         
         
//sets the data that is sent to the next screen
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
        if ([segue.identifier  isEqual: @"highScoreSeg"]){
        HighScoreView *newScreen = segue.destinationViewController;
        newScreen.score = _currentRank;
        } else{
        loseScreen *newScreen = segue.destinationViewController;
        newScreen.score = _currentRank;
    }
    
}
         
-(void) segAway{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger HighScore = [defaults integerForKey:@"HighScore"];
    if ((NSInteger)_currentRank > HighScore) {
        [defaults setInteger:[_currentRank integerValue] forKey:@"HighScore"];
        [self performSegueWithIdentifier:@"highScoreSeg" sender:self];
    } else {
        [self performSegueWithIdentifier:@"loseScreen" sender:self];
    }


}

@end


