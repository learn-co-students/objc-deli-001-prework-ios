//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(NSString*)stringWithDeliLine:(NSArray*) deliLine;
-(void)addName:toDeliLine:(NSString*)name:(NSMutableArray*)deliLine;
-(NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)deliLine;







@end
