//
//  AdditionQuestion.m
//  Maths
//
//  Created by David Guichon on 2017-03-07.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype)init{
    if (self == [super init]){
        int rndm1 = arc4random_uniform(90)+10;
        int rndm2 = arc4random_uniform(90)+10;
        
        _question = [NSString stringWithFormat:@"What is %i + %i ?\n",rndm1, rndm2];
        _answer = rndm1 + rndm2;
    }
    return self;
}




@end
