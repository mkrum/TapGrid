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


-(void)initalSet: (int[9]) numbers{
    int rand;
    int temp;
    for (int i = 0; i < 9; i++) {
        rand = arc4random_uniform(8);
        temp = numbers[i];
        numbers[i] = numbers[rand];
        numbers[rand] = temp;
    }
    [_button1 set: numbers[0]];
    [_button2 set: numbers[1]];
    [_button3 set: numbers[2]];
    [_button4 set: numbers[3]];
    [_button5 set: numbers[4]];
    [_button6 set: numbers[5]];
    [_button7 set: numbers[6]];
    [_button8 set: numbers[7]];
    [_button9 set: numbers[8]];
}

@end


