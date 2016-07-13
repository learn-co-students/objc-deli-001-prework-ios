//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray *)deliLine {
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    
    } else {
        //[Dare, Michael, Kayla]
        NSMutableString *currentLine = [@"The line is:" mutableCopy];
        
        for(NSUInteger i = 0; i < [deliLine count]; i++) {
            NSString *customer = deliLine[i];
            NSString *customerPlace = [NSString stringWithFormat: @"\n%lu. %@", i+1, customer];
            [currentLine appendString:customerPlace];
        }
        
        return currentLine;
    }
}


-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    NSMutableString *personsName = [name mutableCopy];
    NSString *personToAdd = [NSString stringWithFormat: @"%@", personsName];
    [deliLine addObject:personToAdd];

}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *nextCustomer = [deliLine[0] mutableCopy];
    [deliLine removeObjectAtIndex:0];
    
    return nextCustomer;
}
         
         //  NSString *currentLine = [NSString stringWithFormat:@"The line is:\n %lu. %@", peopleInLine];
         //  NSMutableArray *peopleInLine = ;
    //[NSLog(@"The line is:\n%@", deliLine[i]);
//return currentPerson;
@end
