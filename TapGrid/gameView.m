//
//  gameView.m
//  TapGrid
//
//  Created by Michael Krumdick on 6/29/15.
//  Copyright (c) 2015 apptrocious. All rights reserved.
//

#import "gameView.h"

@implementation gameView

-(void)viewDidLoad{
    
    self.numbers = [NSMutableArray array];
    for (int i = 1; i < 10; i++) {
        [self.numbers addObject:[NSNumber numberWithInt:i]];
    }
    _currentRank = [NSNumber numberWithInt:0];
    [self initalSet];
    
}

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
    
}

-(void)startTimer: (int) length{
    self.seconds = length;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(runSeconds) userInfo:nil repeats:YES];
    
}

-(void)runSeconds{
    _seconds = _seconds - 1;
    _timerLabel.text = [[NSNumber numberWithInt:_seconds] stringValue];
    if (_seconds == 0){
        NSLog(@"Failure");
        [_timer invalidate];
    }
}

-(void)set{
    
    for (int i = 0; i < 9; i++) {
        _numbers[i] = [NSNumber numberWithInt:[_numbers[i] intValue] + 9];
    }
    [self startTimer:10];
    
    [self shuffle:_numbers];
}

-(void) buttonPress: (tapButton*) button{
    NSNumber *rank = [NSNumber numberWithInt:[[button getNumber] intValue]];
    _currentRank = [NSNumber numberWithInt:[_currentRank intValue]];
    
    if ([rank intValue] != ([_currentRank intValue] + 1)){
        NSLog(@"Failure");
        
    }
        else{
            int value = [_currentRank intValue];
            _currentRank = [NSNumber numberWithInt:value + 1];
            [button set: _numbers[[rank intValue] % 9]];
            }
    if([rank intValue] % 9 == 0){
        [self set];
    }

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

@end


