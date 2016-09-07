//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray*)deliLine {
    if ([deliLine count] == 0) {
        NSString *emptyLine = @"The line is currently empty.";
        return emptyLine;
    } else {
        NSMutableString *peopleOnLine = [[NSMutableString alloc] init];
        [peopleOnLine appendString: @"The line is:"];

        for (int counter = 0; counter <deliLine.count; counter++) {
            NSString *line = [NSString stringWithFormat:@"\n%i. %@", counter+1, deliLine[counter]];
            [peopleOnLine appendString: line];
        }
        return peopleOnLine;
    }
    
}

-(void)addName:(NSString*)name toDeliLine:(NSMutableArray*)deliLine {
    [deliLine addObject:name];
}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray*)deliLine {
    NSString *nextPersonOnLine = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextPersonOnLine;
}

                       
                       

/*
 
 *  Define your methods here!
 
 */

@end
