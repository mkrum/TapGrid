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
    int numbers[9] = {1,2,3,4,5,6,7,8,9};
    [self initalSet:numbers];

}
-(void) shuffle: (int[9]) numbers{
    int rand;
    int temp;
    for (int i = 0; i < 9; i++) {
        rand = arc4random_uniform(8);
        temp = numbers[i];
        numbers[i] = numbers[rand];
        numbers[rand] = temp;
    }
    
}

-(void)initalSet: (int[9]) numbers{
    [self shuffle:numbers];
    [_button1 set: numbers[0]];
    [_button2 set: numbers[1]];
    [_button3 set: numbers[2]];
    [_button4 set: numbers[3]];
    [_button5 set: numbers[4]];
    [_button6 set: numbers[5]];
    [_button7 set: numbers[6]];
    [_button8 set: numbers[7]];
    [_button9 set: numbers[8]];
    for (int i = 0; i < 9; i++) {
        numbers[i] = numbers[i] + 10;
    }
    [self shuffle:numbers];
}

-(void) buttonPress: (tapButton*) button{
    int rank = [button getRank];
    if (rank != _currentRank + 1){
        NSLog(@"Failure");
    }
    _currentRank++;
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


