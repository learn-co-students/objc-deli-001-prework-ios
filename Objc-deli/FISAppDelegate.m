//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSUInteger numberOfPeopleInLine = [deliLine count];
    BOOL thereArePeopleInDeliLine = numberOfPeopleInLine > 0;
    
    if (thereArePeopleInDeliLine) {
        NSString *listOfPeopleInLine = @"The line is:\n";
        for (NSUInteger i = 0 ; i < numberOfPeopleInLine; i++) {
            NSUInteger numberInLine = i + 1;
            NSString *personInLine = deliLine[i];
            listOfPeopleInLine = [listOfPeopleInLine stringByAppendingFormat: @"%lu. %@", numberInLine, personInLine];
            if (i < numberOfPeopleInLine - 1) {
                listOfPeopleInLine = [listOfPeopleInLine stringByAppendingFormat:@"\n"];
            }
        }
        return listOfPeopleInLine;
        
    }else{
        NSString *noOneInLine = @"The line is currently empty.";
        return noOneInLine;
    }
}

- (NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
    return deliLine;
}


- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    
    return nextCustomer;
}

@end
