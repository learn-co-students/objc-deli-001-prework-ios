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



- (NSString *) stringWithDeliLine: (NSMutableArray *)deliLine {
    //create a string to return at the end of the method
    NSMutableString *deliLineString = [[NSMutableString alloc] init];
    //    NSMutableString *deliLineString = [ @"" mutableCopy ]; <-- same thing as above.
    
    //if the line is 0, return that line is empty by appending a new string
    if ([deliLine count] <= 0) {
        
        [deliLineString appendString:@"The line is currently empty."];

    } else {
            //if the line is greater than zero, create a string to return the line is:
        [deliLineString appendString:@"The line is:"];
        //create i variable to track deliLine index, make it increase until it reaches the end of deliLine array
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
        //append a format to the previously appended deliLineString, \n makes a new line %lu converts i from integer to string
            [deliLineString appendFormat:@"\n%lu. %@", i + 1, deliLine[i]];
            
        }
    }
    
    return deliLineString;
    
}
//Build the method addName:toDeliLine: method to add the submitted name to the deliLine. Since the deliLine argument is mutable, this method does not need to return an array; the array argument is modified in-place.
- (void)addName : (NSString *)name toDeliLine : (NSMutableArray *) deliLine; {
    //adds to array while keeping original
    [deliLine  addObject : (name)];
}
//Build the method serveNextCustomerInDeliLine: method. Save the first name in the deliLine to an NSString object within the method. Then remove the first object from the deliLine and return the name you removed. Hint: Using removeObject: could be problematic for you. There's another method on NSMutableArray that will let you specify an object to remove by array index.
- (NSString *)serveNextCustomerInDeliLine: (NSMutableArray *) deliLine; {
    NSString *firstInLine = deliLine[0];
    [deliLine removeObjectAtIndex:0];

    return firstInLine;
}



@end
