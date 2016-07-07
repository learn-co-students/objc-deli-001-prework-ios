//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}


- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSMutableString *lineBuild = [@"The line is:" mutableCopy];
    
    if ([deliLine count] == 0) {
        NSString *emptyLine = @"The line is currently empty.";
        return emptyLine;
    } else {
        for (NSUInteger i = 0; i < [deliLine count]; i++)
        {NSUInteger x = i + 1;
            NSString *customer = deliLine[i];
            [lineBuild appendFormat:@"\n%lu. %@", x, customer];
        }
    }
        return lineBuild;
}

- addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    return nil;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *nowServing = deliLine[0];
    
    [deliLine removeObjectAtIndex:0];
    
    return nowServing;
    
}

@end















