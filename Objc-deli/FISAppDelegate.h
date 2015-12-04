//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/*
 
 *  Declare your methods here!
 
 */

- (NSString *) stringWithDeliLine: (NSArray *) deliline;
- (NSString *) addNametoDeliLine: (NSString *)name: (NSMutableArray *)deliLine;
- (NSString *) serveNextCustomerInDeliLine: (NSMutableArray *) deliline;

@end


