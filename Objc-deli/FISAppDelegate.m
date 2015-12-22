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


/*
 expect(deliString).to.equal(@"The line is:\n1. Anita\n2. Alan\n3. Ada\n4. Aaron\n5. Alan");
 expect(deliString2).to.equal(@"The line is:\n1. Joe\n2. Mark");
 
 deliString = [appDelegate stringWithDeliLine:deliLine];
 expect(deliString).to.equal(@"The line is currently empty.");

 
 */


-(NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSMutableString *mDeliLine = [[NSMutableString alloc]init];

    
   if (deliLine.firstObject == nil) {
       NSString *emptyShop = @"The line is currently empty.";
       return emptyShop;
    }
    else {
        
        NSString *busyShop = @"The line is:";
        [mDeliLine appendString:busyShop];
    
    }
    
    
    for (NSUInteger item = 0; item < [deliLine count]; item++) {
        
        
        
        [mDeliLine appendFormat:@"\n%ld. %@", item+1, deliLine[item]];
        }

    
    
    return mDeliLine;
}

/*
  [appDelegate addName:@"Michael" toDeliLine:deliLine];
 expect(deliLine).to.equal(@[@"Anita", @"Alan", @"Ada", @"Aaron", @"Alan", @"Michael" ]);

 */
- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
}


/*
 [appDelegate serveNextCustomerInDeliLine:deliLine];
 expect(deliLine).to.equal(@[@"Alan", @"Ada", @"Aaron", @"Alan"]);
*/

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *removedName = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return removedName;
}

@end