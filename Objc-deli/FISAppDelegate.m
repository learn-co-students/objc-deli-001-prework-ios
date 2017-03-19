//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)string{
    // if there are no customers in line, return the string The line is currently empty
    NSString *result = @"";
   
    //NSString *deliLine = [[NSMutableArray alloc] initWithArray:@[@"Anita", @"Alan", @"Ada", @"Aaron", @"Alan"] ];
    //NSString *deliLine2 = [[NSMutableArray alloc] initWithArray:@[@"Joe",@"Mark"]];
    NSArray *deliLine = [[NSArray alloc] initWithObjects:@"Anita", @"Alan", @"Ada", @"Aaron", @"Alan", nil];
    NSMutableArray *mDeliLine = [mDeliLine mutableCopy];
 
    // for (NSUInteger i = 0; i < [stringWithDeliLine count]; i++){
    
    
    
    for (NSUInteger i = 0; i < 5; i++) {
        if (i == 0){
       return @"The line is currently empty";
    }
}
                                     

- addName;(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    //method to add the submitted name to the deliLine
    
    NSMutableArray *toDeliLine = [[NSMutableArray alloc] init];
    NSString *addName = [@"One"];
    [mutableArray addObject:name];
 
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    //Save the first name in the deliLine to an NSString object within the method.
    //Then remove the first object from the deliLine and return the name you removed.
   for (NSUInteger i = 0; i < [deliLine count]; i++) {
   }
}
    
    //Wish I had more complete solutions here

@end
