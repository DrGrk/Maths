//
//  main.m
//  Maths
//
//  Created by David Guichon on 2017-03-07.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper* firstScore = [[ScoreKeeper alloc]init];
        BOOL gameOn=YES;
        NSString *quit = @"quit";
        while (gameOn==YES) {

//Init AdditionQuestion && Log Score
            [firstScore totalScore];
            AdditionQuestion* first = [[AdditionQuestion alloc] init];
            NSLog(@"%@", first.question);
            
            
            
//"Ask for Input" Method
            NSString *objAnswerTrim = [InputHandler getTrimmedInput];
      
            
//Quit Option
            if ([objAnswerTrim isEqualToString:quit]){
                gameOn = NO;
                break;
            }
            
//Convert to NSInteger and return value
            NSInteger finalInputAnswer = [objAnswerTrim integerValue];
            NSLog(@"Your answer is %li\n", finalInputAnswer);
            
//Compare Value, Output Response, Update Score
            if (finalInputAnswer == first.answer){
                NSLog(@"You Are Correct\n\n");
                firstScore.correctScore +=1;
                
            }
            if (finalInputAnswer != first.answer){
                NSLog(@"You Are Very Wrong\n\n");
                firstScore.incorrectScore +=1;
            }
            
        }
        
    }
    return 0;
}
