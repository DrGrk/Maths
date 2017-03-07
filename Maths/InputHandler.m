//
//  InputHandler.m
//  Maths
//
//  Created by David Guichon on 2017-03-07.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler



+(NSString *)getTrimmedInput{
//Get Input
    char answer[200];
    NSLog(@"Enter your answer?\n");
    fgets(answer, 200, stdin);

//Convert C-String to NSString
    NSString *objAnswer = [NSString stringWithCString:answer
                                         encoding:NSASCIIStringEncoding];

//Trim the Answer
    NSCharacterSet *answerTrimmer = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *objAnswerTrim = [objAnswer stringByTrimmingCharactersInSet:answerTrimmer];
    return objAnswerTrim;
    
}

@end
