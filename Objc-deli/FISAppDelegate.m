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
    
    NSMutableString *customerLineOrder = [[NSMutableString alloc]init];
    NSMutableString *LineReportStr = [@"The line is:" mutableCopy];

    if ([deliLine count] == 0) {
        NSString *emptyLine = @"The line is currently empty.";
        return emptyLine;
        
    }else{
        
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            NSString *customerName = deliLine [i];
            NSUInteger linePosition = i + 1;
            [customerLineOrder appendFormat:@"\n%lu. %@", linePosition, customerName];
        
        }
        
    [LineReportStr appendString:customerLineOrder];
    return LineReportStr;
    }
    
}


- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
    
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *customerServed = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    
    return customerServed;
    
    
}


@end
