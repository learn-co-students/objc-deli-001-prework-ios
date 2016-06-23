//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray *)deliLine{
    NSString *deliLineList = @"The line is:\n"; //creates string of list of people in line
        if ([deliLine count]==0) {//if there is no one in line
            return @"The line is currently empty.";
        } else {
            for (NSInteger i=0; i<[deliLine count]; i++) {//loops over the list of people in line
                if (i!=[deliLine count]-1) {//captures the last person in line (last index), make sure there is a space between the # and the name
                    deliLineList=[deliLineList stringByAppendingString:[NSString stringWithFormat: @"%li. %@\n",i+1,deliLine[i]]];
                } else {//captures everyone else in line, make sure there is a space between the # and the name
                    deliLineList=[deliLineList stringByAppendingString:[NSString stringWithFormat: @"%li. %@",i+1,deliLine[i]]];
                }NSLog(@"%@",deliLineList);
            
            }
            return deliLineList;
        }
}
 
-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];//adds the submitted name to the deli line
    return;
}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    NSString *firstCustomer = deliLine[0];//saves the first person in line to a string
    [deliLine removeObjectAtIndex:0];//removes the first person in line from the line
    NSLog(@"%@", firstCustomer);
    return firstCustomer;//returns the name of the person removed
}

@end
