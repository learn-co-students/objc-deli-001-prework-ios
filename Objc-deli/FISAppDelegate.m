//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *) stringWithDeliLine:(NSArray *)deliLine {
    
    if (deliLine.count == 0) {
        return @"The line is currently empty.";
        
    } else {
        
        NSString *stringWithDeliLine = @"The line is:";
        
        for (NSUInteger i = 0; i < (deliLine.count); i++) {
            
            NSUInteger lineNumber = i + 1;
            NSString *personInLine = deliLine[i];
            
            stringWithDeliLine = [NSString stringWithFormat:@"%@\n%lu. %@", stringWithDeliLine, lineNumber, personInLine];
            
        }
        
        return stringWithDeliLine;
        
    }
    
}

- (id)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
    
    return nil;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *firstPersonInLine = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return firstPersonInLine;
}

/*
 
 *  Define your methods here!
 
 */

@end
