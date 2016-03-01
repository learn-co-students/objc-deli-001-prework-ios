//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    if ([deliLine count] == 0) {
        
        return @"The line is currently empty.";
        
    } else {
        
        NSString *lineString = @"The line is:";
        
        NSMutableString *mutableLineString = [lineString mutableCopy];
        
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            
            NSUInteger customerNumber = i+1;
            NSString *customerNumberString = @"";
            NSMutableString *mutableCustomerNumber = [customerNumberString mutableCopy];
            [mutableCustomerNumber appendFormat:@"%u",customerNumber];
            
            NSString* customerName = [deliLine objectAtIndex:i];
            
            [mutableLineString appendFormat:@"\n%@. %@", mutableCustomerNumber, customerName];
            
        }
        
        return mutableLineString;
    
    }
}

- (void *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
    return nil;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *currentCustomer = [deliLine objectAtIndex:0];
    
    [deliLine removeObjectAtIndex:0];
    
    return currentCustomer;
    

}


@end
