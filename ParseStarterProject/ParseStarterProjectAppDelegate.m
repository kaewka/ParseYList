
#import "Parse/Parse.h"
#import "TopicsTableViewController.h"
#import "ParseStarterProjectAppDelegate.h"

@implementation ParseStarterProjectAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // ****************************************************************************
    // Uncomment and fill in with your Parse credentials:
    [Parse setApplicationId:@"PRlCTmsvTNBeypIrP63NBkJBGxG8e84yzqX7FEdj"
                  clientKey:@"yRYOjQ999mvl3h77WmrO5Ov0FS3Dg752BwFHhuoH"];
    
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    // Override point for customization after application launch.

    TopicsTableViewController *controller = [[TopicsTableViewController alloc] init];
  
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:controller];
    [self.window makeKeyAndVisible];
    
    // Let's make an object each launch, so there's definitely something to display.
    
    /*
    PFObject *object = [PFObject objectWithClassName:@"Todo"];
    [object setObject:@"Sample Text123" forKey:@"text"];
    [object setObject:@3 forKey:@"priority"];
    [object saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        // Refresh the table when the object is done saving.
        [controller loadObjects];
    }];
     */
  
    return YES;
}

@end
