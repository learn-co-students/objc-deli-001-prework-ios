//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}





//METHODS

- (NSString *)stringWithDeliLine: (NSArray *)deliLine {
    
    NSInteger customer = [deliLine count];
    NSMutableString *returnedString = [NSMutableString stringWithString:@""];
    
    if (customer == 0) {
        [returnedString setString:@"The line is currently empty."];
    
    }
    
    else {
         [returnedString setString:@"The line is:\n"];
        
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            
            int iCount = i+1;
            NSString *iCountString = [NSString stringWithFormat:@"%i", iCount];
            
            [returnedString appendString:(iCountString)];
            [returnedString appendString:@". "];
            [returnedString appendString:(deliLine [i])];
            if (i < [deliLine count ] - 1) {
                [returnedString appendString:@"\n"];
            }
        }
    }
    
    
    return returnedString;
    
}



- (void) addName:(NSString *)name toDeliLine:(NSMutableArray *)toDeliLine
{
    
        [toDeliLine addObject:name];
    
}



- (NSString *)serveNextCustomerInDeliLine: (NSMutableArray *) deliLine {
    NSString *returnedString;
    
    returnedString = deliLine [0];
    [deliLine removeObjectAtIndex: 0];
    
    
    
    return returnedString;
    
}







@end
