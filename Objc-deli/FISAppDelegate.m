//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray *)deliLine {
    NSString *peopleInLine = @"The line is";
    
    if ([deliLine count] == 0) { //if no customers in line
        NSString *noCustomers = @"The line is currently empty.";
        return noCustomers;
        
    } else {
        
        for (NSUInteger i = 0; i < [deliLine count]; i++){
            NSString *listOfCustomers = [NSString stringWithFormat:@"\n%lu. %@.", i++, deliLine[i]]; //format beginning with their number in the queue
            peopleInLine = [peopleInLine stringByAppendingString:listOfCustomers]; //appending every customer in the queue
        }
    }
    
    return  peopleInLine;
}

-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name]; //add the submitted name to the deliLine
}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *nextInLine = deliLine[0]; //save the first name in the deliLine to an NSString object.
    [deliLine removeObjectAtIndex:0]; //remove the first object from the deliLine and return the removed name.
    
    return nextInLine;
}

@end
