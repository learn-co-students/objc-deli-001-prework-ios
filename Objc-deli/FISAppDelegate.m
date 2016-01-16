//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray *)deliLine{
    NSMutableString *line  = [@"" mutableCopy];
    
    if ([deliLine count] <= 0)
    {
        [line appendString: @"The line is currently empty."];
    }
    else
    {
        [line appendString: @"The line is:"];
        //NSMutableString *line  = [@"The line is:" mutableCopy];
        
        for (NSUInteger i = 0; i < [deliLine count]; i++){
            
            [line appendFormat:@"\n%lu. %@", i+1, deliLine[i]];
         }
    }
        return line;
}
    
    -(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine;{
        [deliLine addObject:name];
    }
    
    -(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
        
        NSString *firstname = deliLine[0];
        [deliLine removeObjectAtIndex:0];
        return firstname;
    }

/*
 
 *  Define your methods here!
 
 */

@end
