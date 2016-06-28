//
//  main.m
//  Word Effects
//
//  Created by Yana Kultysheva on 2016-06-28.
//  Copyright © 2016 Yana Kultysheva. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int i = 1;
    
    while (i < 10)  {
        
        
        char inputChars[255];
        int choice;
        
        printf("Input a string:");
        
        fgets(inputChars, 255, stdin);
        
        printf("Your string is %s\n", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        NSLog(@"Input was: %@", inputString);
        
        
        
        NSString *lastChar = [inputString substringFromIndex:[inputString length] - 2];
        NSLog(@"%@", lastChar);
        if ([lastChar isEqualToString:@"?\n"]) {
            NSLog(@"I don't know");
        } else if ([lastChar isEqualToString:@"!\n"]) {
            NSLog(@"Calm down");
        } else {
            printf("What do you wanna do with the string?\n\n");
            printf("\t1.Do Uppercase.\n");
            printf("\t2.Do Lowercase.\n");
            printf("\t3.Do Numberize.\n");
            printf("\t4.Do Numberize.\n");
            printf("\t5.Do Numberize.\n");
            scanf("%d", &choice);
            getchar();
            
            switch (choice) {
                case 1:
                    NSLog(@"%@",[inputString uppercaseString]);
                    break;
                case 2:
                    NSLog(@"%@",[inputString lowercaseString]);
                    break;
                case 3:
                    printf("You choose 3");
                    break;
                case 4:
                    NSLog(@"%@",[inputString stringByAppendingString:@", eh"]);
                    break;
                case 5:
                    NSLog(@"%@",[inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                    break;
                    
            }
        }
        
        
        
        
        
        
        
    }
    return 1;
}
