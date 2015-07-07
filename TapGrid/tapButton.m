//
//  tapButton.m
//  TapGrid
//
//  Created by Michael Krumdick on 6/30/15.
//  Copyright (c) 2015 apptrocious. All rights reserved.
//

#import "tapButton.h"

@implementation tapButton

-(void)set: (NSNumber*)number{
    _number = number;
    [self setTitle:[number stringValue] forState:UIControlStateNormal];
}

-(NSNumber*) getNumber {
    return _number;
}

-(void) increase: (NSNumber*) add{
    _number = [NSNumber numberWithInt:[_number intValue] +[add intValue]];
    [self set:_number];
}


@end
