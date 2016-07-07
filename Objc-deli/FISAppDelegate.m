//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    NSMutableArray *  deliLine = [[NSMutableArray alloc] initWithArray:@[@"Anita", @"Alan", @"Ada", @"Aaron", @"Alan"] ];
    NSMutableArray *  deliLine2 = [[NSMutableArray alloc] initWithArray:@[@"Joe",@"Mark"]];
    
    NSLog(@"%@",[self stringWithDeliLine:deliLine]);
    NSLog(@"%@",[self stringWithDeliLine:deliLine2]);
    //[self addName:(NSString *) toDeliLine:deliLine];
    return YES;
}


-(NSString*)stringWithDeliLine:(NSArray *)deliLine{
    if (deliLine == nil || deliLine.count == 0){
        NSString * deliString = @"The line is currently empty.";
        return deliString;
    } else {
        
        NSMutableString * deliString1 = [[NSMutableString alloc] init];
        NSMutableString * deliString2 = [[NSMutableString alloc] init];
        [deliString2 appendString:@"The line is:"];
        for ( int i = 0 ; i < deliLine.count ; i++){
            
        deliString1 = [NSMutableString stringWithFormat:@"\n%i. %@",i+1,deliLine[i]];
            [deliString2 appendString:deliString1];
        }
        return deliString2;
    }
}
-(void)addName:(NSString*)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];
}

-(NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)deliLine{
    NSString * firstName = [deliLine firstObject];
    [deliLine removeObjectAtIndex:0];
    return firstName;
}

@end
