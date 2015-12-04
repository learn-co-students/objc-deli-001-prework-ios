//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/*
 
 *  Declare your methods here!
 
 */

- (NSString *) stringWithDeliLine: (NSArray *) deliline;
- (NSString *) addName:toDeliLine: (NSString *)name; (NSMutableArray *)deliLine;
- (NSString *) serveNextCustomerInDeliLine: (NSMutableArray *) deliline;

@end


