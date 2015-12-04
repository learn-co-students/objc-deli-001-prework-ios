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



- (NSString *) serveNextCustomerInDeliLine: (NSMutableArray *) deliline{
    NSMutableArray *mLine =
    [NSMutableArray arrayWithArray:@[ @"Anita", @"Alan", @"Ada", @"Aaron", @"Alan"  ] ];
    
    NSString *anita = [mLine objectAtIndex:0];
    [mLine removeObject:anita];
    
    NSLog(@"%@", mLine);
    
    NSString *ada = [mLine objectAtIndex:2];
    NSString *aron =[mLine objectAtIndex:3];
    NSString *alan = [mLine objectAtIndex:1];
    
    [mLine removeObject:alan];
    [mLine removeObject:ada];
    [mLine removeObject:aron];
    NSLog(@"%@", mLine);
    
    [mLine insertObject:anita atIndex:0];
    NSLog(@"%@", mLine);
    
    [mLine insertObject:alan atIndex:1];
    NSLog(@"%@", mLine);
    
    return nil;}

- (NSString *) addNametoDeliLine: (NSString *)name: (NSMutableArray *)deliLine; {
    
    NSArray *line = @[@"\n1. Anita", @"\n2. Alan", @"\n3. Ada", @"\n4. Aaron", @"\n5. Alan"];
    NSMutableArray *mLine = [line mutableCopy];
    NSString *michael = @"\n6. Michael";
    NSString *grace = @"\n7. Grace";
    [mLine insertObject:michael atIndex:5];
    NSLog(@"%@", mLine);
    
    [mLine insertObject:grace atIndex:6];
    NSLog(@"%@", mLine);
    
    return nil;}

- (NSString *) stringWithDeliLine: (NSArray *) deliLine {
    
    NSString *string = @"The line is:";
    
    NSArray *line = @[@"\n1. Anita", @"\n2. Alan", @"\n3. Ada", @"\n4. Aaron", @"\n5. Alan"];
    NSMutableArray *mLine = [line mutableCopy];
    
    NSArray *line2 = @[@"\n1. Joe", @"\n2. Mark"];
    NSMutableArray *mLine2 = [line2 mutableCopy];
    
    for (NSUInteger i = 0; i < [line count]; i++) {
        
        NSUInteger index = i + 1; //off by one
        
        if (i == 0) {
            
            NSLog(@"The line is currently empty.");
            
        } else {
            NSLog(@"%@ %@ %@ %@ %@ %@.", string, line[1], line[2], line[3], line[4], line [5]);
            NSLog(@"%@ %@ %@.", string, line[1], line[2]);
        }
        return nil;}                //should be return result


}

@end
