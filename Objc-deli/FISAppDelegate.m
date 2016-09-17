//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

// returns string in format: The line is: (list of people)
// or The line is empty based on the deliLine provided
- (NSString *)stringWithDeliLine:(NSMutableArray *)deliLine
{
  if (!deliLine || deliLine.count == 0) {
    return @"The line is currently empty.";
  } else {
    NSString *deliString = @"The line is:";
    for (NSUInteger i = 0; i < deliLine.count; i++) {
      NSUInteger spotInLine = i + 1;
      NSString *person = deliLine[i];
      deliString = [NSString stringWithFormat:@"%@\n%lu. %@", deliString, spotInLine, person];
    }
    
    return deliString;
  }
}

// adds the name provided to the deliline array
- (NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine
{
  [deliLine addObject:name];
  return deliLine;
}

// saves next in line as a string, removes next in line from array,
// and returns string of item removed
- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine
{
  if (!deliLine || deliLine.count == 0) {
    return nil;
  }
  
  NSString *nextInLine = [deliLine objectAtIndex:0];
  [deliLine removeObjectAtIndex:0];
  
  return nextInLine;
}


@end
