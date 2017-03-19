//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}


/*
 if there are no customers in line, return the string The line is currently empty.,
 otherwise, return a formatted string beginning with The line is: and appending every customer in the queue on a new line (\n) beginning with their number in the queue, e. g. 1. Anita. Remember, these customers are humans so they count from one—not from zero like computers.
 */

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    // Init mutable message
    NSMutableString *message = [[NSMutableString alloc] init];
    
    // If customers are on the line
    if ([deliLine count] > 0) {
        
        // Append opening message
        [message appendString:@"The line is:"];
        
        // Append roster items
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            
            [message appendFormat:@"\n%lu. %@", i + 1, deliLine[i]];
            
            
        }
        
        
    } else {
        
        // No customers on the line
        [message appendString:@"The line is currently empty."];
        
    }
    
    return message;
}


/*
 Build the method addName:toDeliLine: method to add the submitted name to the deliLine. Since the deliLine argument is mutable, this method does not need to return an array; the array argument is modified in-place.
 */

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
}


/*
 Build the method serveNextCustomerInDeliLine: method. Save the first name in the deliLine to an NSString object within the method. Then remove the first object from the deliLine and return the name you removed. Hint: Using removeObject: could be problematic for you. There's another method on NSMutableArray that will let you specify an object to remove by array index.
 */


- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    // Saving first customer's name on the array/line
    NSString *firstCustomer = deliLine[0];
    
    // Removing customer from array
    [deliLine removeObjectAtIndex:0];
    
    // Return the name
    return firstCustomer;
    
}

@end
