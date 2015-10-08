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

- (NSString *) stringWithDeliLine:(NSMutableArray *)deliLine {
    
    
    if ([deliLine isEqualToArray: @[]]) {
    
        return @"The line is currently empty.";
    
    } else {
        
    NSMutableString *result = [[NSMutableString alloc] init];
        
       for (NSInteger i = 0; i < [deliLine count]; i++) {
            
           int *lineNumber =i+1;
           
           NSString *numberAndName = [NSString stringWithFormat:@"\n%li. %@",lineNumber,deliLine[i]];
           
           [result appendFormat:@"%@", numberAndName];
           
        }
        
        NSString *resultString = [NSString stringWithFormat:@"The line is:%@", result];
        
        return resultString;
    }
}


-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
   
    [deliLine addObject:name];
    
}

- (NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *nextCustomer = [deliLine objectAtIndex:0];
    
    [deliLine removeObjectAtIndex: 0];
    
    return nextCustomer;
}


@end
