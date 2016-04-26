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

- (NSString *)stringWithDeliLine:(NSArray *)deliLine
{
  if (deliLine.count == 0) {
    return @"The line is currently empty.";
  }
  
  NSMutableString *line = [[NSMutableString alloc] initWithString:@"The line is:"];
  
  NSUInteger index = 1;
  for (NSString *name in deliLine) {
    NSString *numberAndName = [NSString stringWithFormat:@"\n%lu. %@", index, name];
    [line appendString:numberAndName];
    index++;
  }
  return line;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine
{
  [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine
{
  NSString *nextCustomer = [deliLine firstObject];
  [deliLine removeObjectAtIndex:0];
  return nextCustomer;
}

@end
