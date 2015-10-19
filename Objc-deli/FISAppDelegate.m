//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    
    NSMutableArray  *deliLine = [[NSMutableArray alloc] initWithArray:@[@"Anita", @"Alan", @"Ada", @"Aaron", @"Alan"]];
    
    NSMutableArray *deliLine2 = [[NSMutableArray alloc] initWithArray:@[@"Joe",@"Mark"]];
    

    NSString * greeting1 = [self stringWithDeliLine:deliLine];
    
    NSLog(@"%@", greeting1);
    
    NSString * greeting2 = [self stringWithDeliLine:deliLine2];
    
    NSLog(@"%@", greeting2);
    
    
    

    
    return YES;
}









-(NSString *)stringWithDeliLine:(NSMutableArray *)deliLine; {
    
    NSMutableString *lineGreeting = [[NSMutableString alloc] init];
    
    if (deliLine.count == 0 ) {
        [lineGreeting appendString:@"The line is currently empty."];
    
    } else {
    
    
    [lineGreeting appendString:@"The line is:"];
        
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            
            NSUInteger lineNumber = i + 1;
            
            NSString *lineNumberString = [NSString stringWithFormat:@"\n%lu. ", lineNumber];
            
            [lineGreeting appendString:lineNumberString];
            [lineGreeting appendString:deliLine[i]];
            
            
        }
        
    }

    

    return lineGreeting;
    
}

-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine; {
    
    
    [deliLine addObject:name];
    
}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine; {
    
    NSString *currentCustomer = [NSString stringWithString:deliLine[0]];
    
    [deliLine removeObjectAtIndex:0];
        
    NSString *nextCustomer = deliLine[0];
        
    return currentCustomer;
    return nextCustomer;
    
    
    
}

@end
