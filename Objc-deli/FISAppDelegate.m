//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

/*
 
 *  Define your methods here!
 
 */

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSMutableString *deliString = [[NSMutableString alloc]init];
    
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    }
    else {
        [deliString appendString:@"The line is:"];
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            NSUInteger queueNumber = i + 1;
            NSString *personAndNumber = [NSString stringWithFormat:(@"\n%lu. %@"), queueNumber, deliLine[i]];
            [deliString appendString:personAndNumber];
        }
        return deliString;
    }
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *firstInLine = [deliLine firstObject];

    [deliLine removeObjectAtIndex:0];
    return firstInLine;
    
}

@end
