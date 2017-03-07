//
//  ScoreKeeper.m
//  Maths
//
//  Created by David Guichon on 2017-03-07.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)totalScore{
    if (self.correctScore != 0 && self.incorrectScore != 0){
        double total = self.correctScore / ((double)self.correctScore + (double)self.incorrectScore);
        NSLog(@"Your Score is: %i correct, %i incorrect, for a total of %0.2f %%",self.correctScore, self.incorrectScore, total);
    }
    else {
        NSLog(@"Your Score is: %i correct, %i incorrect", self.correctScore, self.incorrectScore);
    }
}

@end
