//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSMutableString *deliQueue = [[NSMutableString alloc] init];
    
    if ([deliLine count] == 0) {
        
        NSString *emptyQueue = @"The line is currently empty.";
        
        return emptyQueue;
    
    } else {
        
        [deliQueue appendString:@"The line is:"];
        
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            
        NSUInteger queueNumber = i + 1;
        
        [deliQueue appendFormat:@"\n%lu. %@", queueNumber, deliLine[i]];

        }
    }
    
    return deliQueue;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    return [deliLine addObject:name];
}
    

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *firstName = deliLine[0];
    
    [deliLine removeObjectAtIndex:0];
    
    return firstName;
}


@end
