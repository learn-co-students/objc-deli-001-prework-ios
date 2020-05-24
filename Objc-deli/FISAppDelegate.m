//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    NSMutableString *peopleInLine = [[NSMutableString alloc]init];
    
    if ([deliLine count] == 0) { //if no customers in line
        peopleInLine = [@"The line is currently empty." mutableCopy];
        
    } else {
        
        peopleInLine = [@"The line is:" mutableCopy];
        
        for (NSUInteger i = 0; i < [deliLine count]; i++){ //for loop counts the number of elements in the array at run time
            [peopleInLine appendFormat: @"\n%lu. %@.", i + 1, deliLine[i]]; //format beginning with their number in the queue
        }
    }
        /*
            NSString *listOfCustomers = [NSString stringWithFormat:@"\n%lu. %@.", i++, deliLine[i]]; //format beginning with their number in the queue
            peopleInLine = [peopleInLine stringByAppendingString:listOfCustomers]; //appending every customer in the queue
        */
    
    return  peopleInLine;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name]; //add the submitted name to the end of deliLine (the mutable array)
} //void type methods have no return to capture

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *nextInLine = deliLine[0]; //save the first name in the deliLine to an NSString object
    [deliLine removeObjectAtIndex:0]; //remove the first object from the deliLine and return the removed name
    
    return nextInLine;
}

@end
