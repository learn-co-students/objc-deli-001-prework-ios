//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // create array of people for NSLog test
    NSArray *hungryPeople = @[@"Jerry", @"George", @"Elaine", @"Kramer"];
    [self stringWithDeliLine:hungryPeople];
    
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSMutableArray *line = [[NSMutableArray alloc] initWithArray:deliLine]; 
    NSInteger length = line.count;
    NSMutableString *message = [[NSMutableString alloc] init];
    
    if (length == 0) {
        message = [@"The line is currently empty." mutableCopy];
        NSLog(@"%@", message);
        
    } else {
        message = [@"The line is:" mutableCopy];
        for (NSUInteger i = 0; i < length; i++) {
            [message appendFormat:@"\n%lu. %@", (i + 1), line[i]];
        }
    }
    
    NSLog(@"%@", message);
    return message;
}

- (void)addName:(NSString *)name
     toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextCustomer;
}

@end
