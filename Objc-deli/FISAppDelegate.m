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
   
    NSUInteger lineLength = [deliLine count];
    BOOL lineEmpty = lineLength == 0;
    NSMutableString *lineQueue = [[NSMutableString alloc] init];
    

    if(lineEmpty)
    {
        [lineQueue appendString:@"The line is currently empty."];
    }
    else
    {
        NSMutableString *linePlace = [[NSMutableString alloc] init];
        
        for(NSUInteger i = 0; i < lineLength; i++)
        {
            NSInteger lineSpot = i+1;
            NSString *nameOnLine = deliLine[i];
            
            if(i == lineLength - 1)
            {
                [linePlace appendFormat:@"%lu. %@", lineSpot, nameOnLine];
            }
            else
            {
                [linePlace appendFormat:@"%lu. %@\n", lineSpot, nameOnLine];
            }
        }
        
        [lineQueue appendFormat:@"The line is:\n%@", linePlace];
    }
    
    return lineQueue;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
 
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {

        NSString *nextCustomer = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    return nextCustomer;
    
    
}

@end
