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
    NSString *empty = @"The line is currently empty.";
    NSString *deliString = @"";
    NSString *line = @"The line is:";
    NSMutableString *mLine = [line mutableCopy];
        if ( [deliLine count] ==  0 ) {
            deliString = empty;
        }
        else {
            for (NSUInteger i = 0; i < [deliLine count]; i++) {
            [mLine appendFormat:@"\n%lu. %@", i+1, deliLine[i]];
            deliString = mLine;
        }
    }
    return deliString;
}

- (NSString *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
    return nil;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *nextInLine = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    return nextInLine;
}


@end
