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
    
    NSMutableString *mdeliString = [[NSMutableString alloc]init];
    
    if ([deliLine count] == 0) {
        [mdeliString appendString:@"The line is currently empty."];
        return mdeliString;
    }
    else {
        [mdeliString appendString:@"The line is:"];
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            NSUInteger queueNumber = i + 1;
            [mdeliString appendFormat:@"\n%lu. %@", queueNumber, deliLine[i]];
        }
        return [NSString stringWithString:mdeliString];
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
