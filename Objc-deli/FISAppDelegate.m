//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    // If the line is empty, say so
    if ([deliLine count] == 0) {

        return @"The line is currently empty.";
    
    } else {        // Otherwise:
     
        // Create a mutable string with the header: "The line is:"
        NSMutableString *whosInLine = [@"The line is:" mutableCopy];
        
        // For each customer, append to whosInLine string: newline, number, and name.
        for (int i = 0; i < [deliLine count]; i++) {
         
            // Create string for this customer
            NSString *numberedCustomer = [NSString stringWithFormat:@"\n%i. %@", i+1, deliLine[i] ];
            
            // Append to whosInLine string.
            [whosInLine appendString:numberedCustomer];
        }

        // Now return the final version of the whosInLine string
        return whosInLine;
        
    }
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
  
    // Add the name to the mutable array.
    [deliLine addObject:name];

}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    // Create a string for the first customer in line
    NSString *firstCustomer = [NSString stringWithFormat:@"%@", deliLine[0]];
    
    // Remove the first customer from the line (i.e., remove first object from the mutable array)
    [deliLine removeObjectAtIndex:0];
    
    // Return the string with the first customer's name
    return firstCustomer;
    
}

@end
