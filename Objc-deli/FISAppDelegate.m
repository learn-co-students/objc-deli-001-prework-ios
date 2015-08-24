//
//  FISAppDelegate.m
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray *)deliLine {
   
    
    NSString *firstPart = (@"The Line is");
    NSMutableArray *emptyList = [[NSMutableArray alloc]init];

    
    if ([deliLine count == 0]) {
        
        NSString *empty = (@"The line is currently empty.");
        return empty;
        
    } else {
        
        NSInteger count = [deliLine count];
        
        for (NSInteger i = 0; i<= count; i+=10) {
            NSInteger correctCount = i + 1;
            NSString *objectToAdd = (@"lu %@ \n", correctCount, deliLine[i]);
            
            [emptyList addObject:objectToAdd];
            [emptyList insertObject:firstPart atIndex:0];
        }
        
        
    }
    
    return emptyList;
}

-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
   
}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    NSString *firstName = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return deliLine[0];
}

@end
