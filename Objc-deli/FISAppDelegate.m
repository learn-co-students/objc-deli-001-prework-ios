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

- (NSString *) stringWithDeliLine: (NSArray *) deliLine {
    
   NSString *string = @"The line is:";
    
   NSArray *line = @[@"Anita", @"Alan", @"Ada", @"Aaron", @"Alan"];
   NSMutableArray *mLine = [line mutableCopy];
    
   NSArray *line2 = @[@"Joe", @"Mark"];
   NSMutableArray *mLine2 = [line2 mutableCopy];
    
    for (NSUInteger i = 0; i < [line count]; i++) {
        
        NSUInteger index = i + 1; //off by one
        
        if (i == 0) {
            
            NSLog(@"The line is currently empty.");
            
        } else {
            NSLog(@"%@ %@ %@ %@ %@ %@ %@.", string, line[1], line[2], line[3], line[4], line [5]);
            NSLog(@"%@ %@ %@.", string, line[1], line[2]);
        }
}

    - (NSString *) addName:(NSString *);name toDeli:(NSMutableArray *)deliline;{
        NSString *michael = @"Michael"
        [mLine insertObject:michael atIndex:6];
        
    return nil;}

- (NSString *) serveNextCustomerInDeliLine: (NSMutableArray *) deliline{
    NSArray *line = @[ @"Anita", @"Alan", @"Ada", @"Aaron", @"Alan", @"Michael", @"Grace" ];
    NSMutableArray *mLine = [line mutableCopy];
   
    NSString *anita = [mLine objectAtIndex:0];
    [mLine removeObject:anita atIndex:0]; //or insertObject atIndex  NSString *anita = @"Anita";
    NSLog(@"%@", mLine);
    
    return nil;}


@end
