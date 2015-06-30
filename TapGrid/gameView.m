//
//  gameView.m
//  TapGrid
//
//  Created by Michael Krumdick on 6/29/15.
//  Copyright (c) 2015 apptrocious. All rights reserved.
//

#import "gameView.h"

@implementation gameView


- (IBAction)testButton:(id)sender {
    
    int rand = arc4random_uniform(10);
    NSString *num = [NSString stringWithFormat:@"%d", rand];
    [sender setTitle:num forState:UIControlStateNormal];
    
}

@end


