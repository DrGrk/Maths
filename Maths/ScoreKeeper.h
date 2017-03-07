//
//  ScoreKeeper.h
//  Maths
//
//  Created by David Guichon on 2017-03-07.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int correctScore;
@property int incorrectScore;

-(void)totalScore;

@end
