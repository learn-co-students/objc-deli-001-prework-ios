//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSMutableString *line = [[NSMutableString alloc] init];
    
    if ([deliLine count] == 0) {
        
        [line appendString:@"The line is currently empty."];

    } else {
        
        [line appendString:@"The line is:"];
        
        for (NSInteger i = 0; i < [deliLine count]; i++) {
            
            NSString *nextUp = deliLine[i];
            
            [line appendFormat:@"\n%li. %@", i+1, nextUp];
        }
        
    }
    
    return line;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *nextUp = deliLine[0];
    
    [deliLine removeObjectAtIndex:0];
    
    return nextUp;
    
}


@end
