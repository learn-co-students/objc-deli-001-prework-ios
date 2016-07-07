//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine; {
    
        if ([deliLine count] == 0) {
            
            NSString *noLineMessage = @"The line is currently empty.";
            
            return noLineMessage;
//Can also just return the message like this return @"The line is currently empty." I just prefer to add a separate string.
            
        }
    
       NSString *line = @"The line is:";
    
            for (NSUInteger i = 0; i < [deliLine count]; i++) {

                line = [line stringByAppendingFormat:@"\n%lu. %@", i + 1, deliLine[i]];
//Originally put appendFormat but that didn't work here. Instead had to use stringByAppendingFormat:. I also originally was trying to append "The line is:" on the same line, but found it easier to put it outside of the loop.
//Since index begins at 0 & the first number we want to print is 1, it was necessary to do i + 1
                
    }

    return line;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine; {
    
    [deliLine addObject:name];
    
    return;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine; {
    
    NSString *first = [deliLine objectAtIndex:0];
    
    [deliLine removeObjectAtIndex:0];
//After the next customer is served, removing their name from the queue.
    
    return first;
}

@end
