//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine; {
    
    NSMutableString *line = [@"The line is:" mutableCopy];
    
    if ([deliLine count] == 0) {
        
        return @"The line is currently empty.";
// If there's no one on the deliLine, the screen will print "The line is currently empty.".
        
    }
    
    for (NSInteger i = 0; i < [deliLine count]; i++) {

        if ([deliLine count] > 0) {
            
            [line appendFormat:@"\n%lu. %@", i + 1, deliLine[i]];
            
        }
    }
// "The line is: <new line><customer's number in line> <customer's name>.
    
    return line;
    
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine; {
    
// Add submitted name to the deliLine.
    
    [deliLine addObject:name];
    
    return;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine; {
    
// Save the first name in the deliLine to an NSString object within the method. Then remove the first object from deliLine and return the name you removed.
    
    NSString *first = [deliLine objectAtIndex:0];
// I originally tried to do [deliLine firstObject] but I believe it was just returning whatever the firstObject of the deliLine was as opposed to returning the name that I removed from the deliLine.
    
    [deliLine removeObjectAtIndex:0];
    
    return first;
    
}

@end
